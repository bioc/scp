library(tidyverse)
library(scp)

## Create an MaxQuant output example file

## To run this code, you need:
##  1. First run the `scp1.R` script in the `scp/inst/script` folder
data("scp1")
##  2. Downloaded the `raw.RData` file that contains the SCoPE2 data
##     set. The file can be downloaded here:
##     https://drive.google.com/file/d/1sN8CkEnAh3z0CFKegzqmwCQSUZt2mn9M/view?usp=sharing
## load("../.localdata/SCP/specht2019/v3/raw.RData")
load("~/Downloads/raw.RData")
##  3. Download the `evidence_unfiltered.csv` file. This table
##     contains additional blank samples that are used as a test case
##     in the vignette. The file can be downloaded here:
##     https://drive.google.com/drive/folders/1VzBfmNxziRYqayx3SP-cOe2gu129Obgx

## The `ev` table was loaded from the `raw.Rdata` file
ev |>
    select(-c("lcbatch", "sortday",  "digest", "Leading.razor.protein.y")) |>
    mutate(protein = Leading.razor.protein) |>
    ## MS set should be consistent with metadata and other data
    dplyr::rename(peptide = modseq) |>
    ## Remove "X" at start of batch
    mutate(Raw.file = gsub("^X", "", Raw.file)) |>
    mutate_if(is.logical, as.character) |>
    ## keep sets selected in scp1
    filter(Raw.file %in% names(scp1) &
           ## keep only a few proteins
           protein %in% rbindRowData(scp1, 1:3)$protein) ->
    samples

## Add the blank sample
read.csv("../.localdata/SCP/specht2019/v2/evidence_unfiltered.csv",
         header = TRUE) |>
    select(-c("X", "X1", "lcbatch", "sortday",  "digest")) |>
    ## extract one of the blank samples
    filter(grepl("FP97_blank_01", Raw.file)) |>
    ## MS set should be consistent with metadata and other data
    dplyr::rename(peptide = modseq,
                  protein = Leading.razor.protein) |>
    ## Remove "X" at start of batch
    mutate(Raw.file = gsub("^X", "", Raw.file)) ->
    blank
## Adjust data types
for(col in grep("", colnames(blank), value = TRUE))
    blank[, "remove"] <- as.character(blank[, "remove"])
for(col in grep("Deamidation..NQ.$", colnames(blank), value = TRUE))
    blank[, col] <- as.numeric(blank[, col])
for(col in grep("Reporter.intensity.corrected.", colnames(blank), value = TRUE))
    blank[, col] <- as.double(blank[, col])

mqScpData <- bind_rows(samples, blank)
format(object.size(mqScpData), units = "MB", digits = 2)
save(mqScpData,
     file = file.path("data/mqScpData.rda"),
     compress = "xz",
     compression_level = 9)

## Create the associated annotation file

## The `design` and `batch` tables were loaded from the `raw.RData`
## file. We clean somewhat the sample metadata so that it meets the
## requirements for `scp::readSCP`. The cell annotation and batch
## annotation are merge into a single table
inner_join(x = design |>
               dplyr::rename(Raw.file = Set) |>
               rename_with(.fn = function(x) sub("^RI", "Reporter.intensity.", x)) |>
               mutate(Raw.file = sub("^X", "", Raw.file)) |>
               pivot_longer(-Raw.file,
                            names_to = "Channel",
                            values_to = "SampleType") |>
               mutate(SampleType = recode(SampleType,
                                          sc_0 = "Blank",
                                          sc_u = "Monocyte",
                                          sc_m0 = "Macrophage",
                                          unused = "Unused",
                                          norm = "Reference",
                                          reference = "Reference",
                                          carrier_mix = "Carrier")) |>
               mutate_all(as.character),
           y = batch |>
               dplyr::rename(Raw.file = set) |>
               mutate(Raw.file = sub("^X", "", Raw.file)) |>
               mutate_all(as.character),
           by = "Raw.file") |>
    filter(Raw.file %in% mqScpData$Raw.file) |>
    ## Add the metadata for the blank sample
    add_row(Raw.file = grep("blank", mqScpData$Raw.file, value = TRUE) |>
                unique() |>
                rep(16),
            Channel = paste0("Reporter.intensity.", 1:16),
            SampleType = "Blank",
            lcbatch = "LCA10",
            sortday = "s8") |>
    data.frame() |>
    rename(quantCols = "Channel" ,
           runCol = "Raw.file") ->
    sampleAnnotation


format(object.size(sampleAnnotation), units = "MB", digits = 2)
save(sampleAnnotation, file = file.path("data/sampleAnnotation.rda"),
     compress = "xz", compression_level = 9)
