##' @title Example MaxQuant/SCoPE2 output
##'
##' @description
##'
##' A `data.frame` with 1088 observations and 139 variables, as
##' produced by reading a MaxQuant output file with 
##' [read.delim()].
##'
##' - Sequence: a character vector
##' - Length: a numeric vector
##' - Modifications: a character vector
##' - Modified.sequence: a character vector
##' - Deamidation..N..Probabilities: a character vector
##' - Oxidation..M..Probabilities: a character vector
##' - Deamidation..N..Score.Diffs: a character vector
##' - Oxidation..M..Score.Diffs: a character vector
##' - Acetyl..Protein.N.term.: a numeric vector
##' - Deamidation..N.: a numeric vector
##' - Oxidation..M.: a numeric vector
##' - Missed.cleavages: a numeric vector
##' - Proteins: a character vector
##' - Leading.proteins: a character vector
##' - protein: a character vector
##' - Gene.names: a character vector
##' - Protein.names: a character vector
##' - Type: a character vector
##' - Set: a character vector
##' - MS.MS.m.z: a numeric vector
##' - Charge: a numeric vector
##' - m.z: a numeric vector
##' - Mass: a numeric vector
##' - Resolution: a numeric vector
##' - Uncalibrated...Calibrated.m.z..ppm.: a numeric vector
##' - Uncalibrated...Calibrated.m.z..Da.: a numeric vector
##' - Mass.error..ppm.: a numeric vector
##' - Mass.error..Da.: a numeric vector
##' - Uncalibrated.mass.error..ppm.: a numeric vector
##' - Uncalibrated.mass.error..Da.: a numeric vector
##' - Max.intensity.m.z.0: a numeric vector
##' - Retention.time: a numeric vector
##' - Retention.length: a numeric vector
##' - Calibrated.retention.time: a numeric vector
##' - Calibrated.retention.time.start: a numeric vector
##' - Calibrated.retention.time.finish: a numeric vector
##' - Retention.time.calibration: a numeric vector
##' - Match.time.difference: a logical vector
##' - Match.m.z.difference: a logical vector
##' - Match.q.value: a logical vector
##' - Match.score: a logical vector
##' - Number.of.data.points: a numeric vector
##' - Number.of.scans: a numeric vector
##' - Number.of.isotopic.peaks: a numeric vector
##' - PIF: a numeric vector
##' - Fraction.of.total.spectrum: a numeric vector
##' - Base.peak.fraction: a numeric vector
##' - PEP: a numeric vector
##' - MS.MS.count: a numeric vector
##' - MS.MS.scan.number: a numeric vector
##' - Score: a numeric vector
##' - Delta.score: a numeric vector
##' - Combinatorics: a numeric vector
##' - Intensity: a numeric vector
##' - Reporter.intensity.corrected.0: a numeric vector
##' - Reporter.intensity.corrected.1: a numeric vector
##' - Reporter.intensity.corrected.2: a numeric vector
##' - Reporter.intensity.corrected.3: a numeric vector
##' - Reporter.intensity.corrected.4: a numeric vector
##' - Reporter.intensity.corrected.5: a numeric vector
##' - Reporter.intensity.corrected.6: a numeric vector
##' - Reporter.intensity.corrected.7: a numeric vector
##' - Reporter.intensity.corrected.8: a numeric vector
##' - Reporter.intensity.corrected.9: a numeric vector
##' - Reporter.intensity.corrected.10: a numeric vector
##' - RI1: a numeric vector
##' - RI2: a numeric vector
##' - RI3: a numeric vector
##' - RI4: a numeric vector
##' - RI5: a numeric vector
##' - RI6: a numeric vector
##' - RI7: a numeric vector
##' - RI8: a numeric vector
##' - RI9: a numeric vector
##' - RI10: a numeric vector
##' - RI11: a numeric vector
##' - Reporter.intensity.count.0: a numeric vector
##' - Reporter.intensity.count.1: a numeric vector
##' - Reporter.intensity.count.2: a numeric vector
##' - Reporter.intensity.count.3: a numeric vector
##' - Reporter.intensity.count.4: a numeric vector
##' - Reporter.intensity.count.5: a numeric vector
##' - Reporter.intensity.count.6: a numeric vector
##' - Reporter.intensity.count.7: a numeric vector
##' - Reporter.intensity.count.8: a numeric vector
##' - Reporter.intensity.count.9: a numeric vector
##' - Reporter.intensity.count.10: a numeric vector
##' - Reporter.PIF: a logical vector
##' - Reporter.fraction: a logical vector
##' - Reverse: a character vector
##' - Potential.contaminant: a logical vector
##' - id: a numeric vector
##' - Protein.group.IDs: a character vector
##' - Peptide.ID: a numeric vector
##' - Mod..peptide.ID: a numeric vector
##' - MS.MS.IDs: a character vector
##' - Best.MS.MS: a numeric vector
##' - AIF.MS.MS.IDs: a logical vector
##' - Deamidation..N..site.IDs: a numeric vector
##' - Oxidation..M..site.IDs: a logical vector
##' - remove: a logical vector
##' - dart_PEP: a numeric vector
##' - dart_qval: a numeric vector
##' - razor_protein_fdr: a numeric vector
##' - Deamidation..NQ..Probabilities: a logical vector
##' - Deamidation..NQ..Score.Diffs: a logical vector
##' - Deamidation..NQ.: a logical vector
##' - Reporter.intensity.corrected.11: a logical vector
##' - Reporter.intensity.corrected.12: a logical vector
##' - Reporter.intensity.corrected.13: a logical vector
##' - Reporter.intensity.corrected.14: a logical vector
##' - Reporter.intensity.corrected.15: a logical vector
##' - Reporter.intensity.corrected.16: a logical vector
##' - RI12: a logical vector
##' - RI13: a logical vector
##' - RI14: a logical vector
##' - RI15: a logical vector
##' - RI16: a logical vector
##' - Reporter.intensity.count.11: a logical vector
##' - Reporter.intensity.count.12: a logical vector
##' - Reporter.intensity.count.13: a logical vector
##' - Reporter.intensity.count.14: a logical vector
##' - Reporter.intensity.count.15: a logical vector
##' - Reporter.intensity.count.16: a logical vector
##' - Deamidation..NQ..site.IDs: a logical vector
##' - input_id: a logical vector
##' - rt_minus: a logical vector
##' - rt_plus: a logical vector
##' - mu: a logical vector
##' - muij: a logical vector
##' - sigmaij: a logical vector
##' - pep_new: a logical vector
##' - exp_id: a logical vector
##' - peptide_id: a logical vector
##' - stan_peptide_id: a logical vector
##' - exclude: a logical vector
##' - residual: a logical vector
##' - participated: a logical vector
##' - peptide: a character vector
##'
##' @usage data("mqScpData")
##' 
##' @details 
##' 
##' The dataset is a subset of the SCoPE2 dataset (version 2, Specht 
##' et al. 2019, 
##' [BioRXiv](https://www.biorxiv.org/content/10.1101/665307v3)). The 
##' input file `evidence_unfiltered.csv` was downloaded from a 
##' [Google Drive repository](https://drive.google.com/drive/folders/1VzBfmNxziRYqayx3SP-cOe2gu129Obgx).
##' The MaxQuant evidence file was loaded and the data was cleaned 
##' (renaming columns, removing duplicate fields,...).  MS runs that 
##' were selected in the `scp1` dataset (see `?scp1`) were kept along 
##' with a blank run. The data is stored as a `data.frame`.
##' 
##' @seealso [readSCP()] for an example on how `mqScpData` is 
##'     parsed into a [QFeatures] object.
##' 
##' @md
"mqScpData"

##' @title Single cell sample annotation
##'
##' @description
##'
##' A data frame with 48 observations on the following 6 variables.
##' - Set: a character vector
##' - Channel: a character vector
##' - SampleType: a character vector
##' - lcbatch: a character vector
##' - sortday: a character vector
##' - digest: a character vector
##'
##' @usage data("sampleAnnotation")
##' 
##' @details 
##' 
##' ##' The dataset is a subset of the SCoPE2 dataset (version 2, Specht 
##' et al. 2019, 
##' [BioRXiv](https://www.biorxiv.org/content/10.1101/665307v3)). The 
##' input files `batch.csv` and `annotation.csv` were downloaded from a 
##' [Google Drive repository](https://drive.google.com/drive/folders/1VzBfmNxziRYqayx3SP-cOe2gu129Obgx).
##' The two files were loaded and the columns names were adapted for 
##' consistency with `mqScpData` table (see `?mqScpData`). The two 
##' tables were filtered to contain only sets present in ``mqScpData`.
##' The tables were then merged based on the run ID, hence merging the
##' sample annotation and the batch annotation. Finally, annotation 
##' for the blank run was added manually. The data is stored as a 
##' `data.frame`.
##' 
##' @seealso [readSCP()] to see how this file is used.
##'
##' @md
"sampleAnnotation"

##' @title Single Cell QFeatures data
##'
##' @description
##'
##' A small [QFeatures] object with SCoPE2 data. The object is
##' composed of 5 assays, including 3 PSM-level assays, 1 peptide
##' assay and 1 protein assay.
##' 
##' @usage data("scp1")
##' 
##' @details 
##' 
##' The dataset is a subset of the SCoPE2 dataset (version 2, Specht 
##' et al. 2019, 
##' [BioRXiv](https://www.biorxiv.org/content/10.1101/665307v3)).
##' This dataset was converted to a [`QFeatures`] object where each 
##' assay in stored as a [`SingleCellExperiment`] object. One assay 
##' per chromatographic batch ("LCA9", "LCA10", "LCB3") was randomly
##' sampled. For each assay, 100 proteins were randomly sampled. PSMs
##' were then aggregated to peptides and joined in a single assay. 
##' Then peptides were aggregated to proteins. 
##' 
##' @md
##' 
##' @docType data
##'
##' @examples
##' data("scp1")
##' scp1
"scp1"

##' @title Minimally processed single-cell proteomics data set
##'
##' @description
##'
##' A `SingleCellExperiment` object that has been minimally processed.
##' The data set is published by Leduc et al. 2022 (see references)
##' and retrieved using `scpdata::leduc2022_pSCoPE()`. The data 
##' processing was conducted with `QFeatures` and `scp`. Quality control
##' was performed, followed by building the peptide data and 
##' log2-transformation. To limit the size of the data, only cells 
##' associated to the 3 first and 3 last MS acquisition runs were 
##' kept. For the same reason, 200 peptides were randomly 
##' sampled. Therefore, the data set consists of 200 peptides and
##' 73 cells. Peptide annotations can be retrieved from the `rowData`
##' and cell annotations can be retrieved from the `colData`. 
##'
##' @section Quality control:
##' 
##' Any zero value has been replaced by NA. 
##' 
##' A peptide was removed from the data set if:
##'  - it matched to a decoy or contaminant peptide
##'  - it had an parental ion fraction below 60 \%
##'  - it had a DART-ID adjusted q-value superior to 1\%
##'  - it had an average sample to carrier ratio above 0.05
##'  
##' A cell was removed from the data set if:
##' - it had a median coefficient of variation superior to 0.6
##' - it had a log2 median intensity outside (6, 8)
##' - it contained less than 750 peptides
##' 
##' @section Building the peptide matrix:
##' 
##' PSMs belonging to the same peptide were aggregating using the 
##' median value. Some peptides were mapped to a different protein 
##' depending on the MS acquisition run. To solve this issue, a 
##' majority vote was applied to assign a single protein to each 
##' peptide. Protein IDs were translated into gene symbols using the
##' `ensembldb` package.
##' 
##' @usage data("leduc_minimal")
##' 
##' @references 
##' 
##' Leduc, Andrew, R. Gray Huffman, Joshua Cantlon, Saad Khan, and 
##' Nikolai Slavov. 2022. “Exploring Functional Protein Covariation 
##' across Single Cells Using nPOP.” Genome Biology 23 (1): 261.
##' 
##' @author Christophe Vanderaa, Laurent Gatto
##' 
##' @md
"leduc_minimal"