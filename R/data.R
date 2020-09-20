#' A data frame describing the samples in the GSE112679 dataset
#'
#' Data frame with 2606 rows and 16 variables describing samples 
#'
#' @format GSE112679_sampDesc is a data frame with 2606 rows and 16 variables:
#' \describe{
#'   \item{geoAcc}{      : chr  "GSM3076193" "GSM3905949" "GSM3905923" ...}
#'   \item{title}{       : chr  "blood_1" "TI_1" "TU_1" "blood_2" ...}
#'   \item{sampType}{    : chr  "blood" "TI" "TU" "blood" ...}
#'   \item{sampNo}{      : chr  "1" "1" "1" "2" ...}
#'   \item{bioSample}{   : chr  "SAMN08869478" "SAMN12141937" "SAMN12141932" ...}
#'   \item{SRA}{         : chr  "SRX3890002" "SRX6367705" "SRX6367693" "SRX3890003" ...}
#'   \item{fileName}{    : chr  "GSM3076193_Seq_1.genebody.txt.gz" "GSM3905949_TI_1.genebody.txt.gz" "GSM3905923_TU_1.genebody.txt.gz" "GSM3076194_Seq_2.genebody.txt.gz" ...}
#'   \item{stage}{       : chr  NA NA NA NA ...}
#'   \item{Dx}{          : chr  "CHB" "HCC" "HCC" "Cirrhosis" ...}
#'   \item{tissueSubtype}{: chr  NA "tumor adjacent sample" "tumor sample" ...}
#'   \item{tissue}{       : chr  "plasma" "liver" "liver" "plasma" ...}
#'   \item{trainValGroup}{: chr  "Train" NA NA "Train" ...}
#'   \item{outcome}{      : chr  "CHB" "HCC" "HCC" "Cirrhosis" ...}
#'   \item{sampID}{       : chr  "GSM3076193" "GSM3905949" "GSM3905923" ...}
#'   \item{outcome2}{     : chr  "CirrhosisCHB" "HCC" "HCC" "CirrhosisCHB" ...}
#'   \item{outcome3}{     : chr  "nonHCC" "HCC" "HCC" "nonHCC" ...}
#' }
"GSE112679_sampDesc"

#' A matrix of feature counts for the matched Tumor/Tissue samples
#'
#' GSE112679_TUTI_featureCount - a matrix of feature counts for the matched Tumor/Tissue samples
#'    rows are feature; columns are samples.
"GSE112679_TUTI_featureCount"

#' A matrix of feature counts for the samples in the training set
#'
#' GSE112679_Train_featureCount - a matrix of feature counts for the samples in the training set
#'    rows are feature; columns are samples.
"GSE112679_Train_featureCount"

#' A matrix of feature counts for the samples in validation set 1
#'
#' GSE112679_Val1_featureCount - a matrix of feature counts for the samples in validation set 1
#'    rows are feature; columns are samples.
"GSE112679_Val1_featureCount"

#' A matrix of feature counts for the samples in validation set 2
#'
#' GSE112679_Val2_featureCount - a matrix of feature counts for the samples in validation set 2
#'    rows are feature; columns are samples.
"GSE112679_Val2_featureCount"

#' A data frame describing the features
#'
#' Data frame with 19100 rows and 6 variables describing features
#'
#' @format genes_annot is a data frame with 19100 rows and 6 variables:
#' \describe{
#'   \item{Symbol}{  chr  "OR4F5" "AL627309.1" "OR4F29" "OR4F16" ...}
#'   \item{Chr}{     chr  "chr01" "chr01" "chr01" "chr01" ...}
#'   \item{Strand}{  chr  "+" "-" "+" "-" ...}
#'   \item{Start}{   num  69091 134901 367640 621096 ...}
#'   \item{Stop}{    num  70008 139379 368634 622034 ...}
#'   \item{Length}{  num  918 4479 995 939 606 ...}
#' }
"GSE112679_genes_annot"





