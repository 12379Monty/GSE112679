GSE112679 R Data Package
================

-----

<!-- README.md is generated from README.Rmd. Please edit that file -->

This package contains data from NCBI GEO [Series
GSE112679](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE112679).
Data methylation profiles were collected to investigate genome-wide
mapping of 5-hydroxymethylcytosines in circulating cell-free DNA as
reported in Cai et al. (2019)
(<https://gut.bmj.com/content/68/12/2195>).

<!-- [@Cai:2019aa] pandoc citations dont work on github (github_document?) -->

## Data sets

``` r
  library(GSE112679)

  tmp <- data(package='GSE112679')
  knitr::kable(tmp$results[, c("Item", "Title")])
```

| Item                | Title                                                                                |
| :------------------ | :----------------------------------------------------------------------------------- |
| TUTI\_featureCount  | TUTI\_featureCount - a matrix of feature counts for the matched Tumor/Tissue samples |
| Train\_featureCount | Train\_featureCount - a matrix of feature counts for the samples in the training set |
| Val1\_featureCount  | Val1\_featureCount - a matrix of feature counts for the samples in validation set 1  |
| Val2\_featureCount  | Val2\_featureCount - a matrix of feature counts for the samples in validation set 2  |
| genes\_annot        | genes\_annot - a data frame describing the features                                  |
| sampDesc            | sampDesc - a data frame describing the samples in the GSE112679 dataset              |

## Installation

The development version from [GitHub](https://github.com/) can be
installed with:

``` r
# install.packages("devtools")
devtools::install_github("12379Monty/GSE112679")
```

## Example

``` r
library(GSE112679)
library(magrittr)

with(sampDesc, table(sampType, trainValGroup, exclude=NULL))
#>         trainValGroup
#> sampType Train Val-1 Val-2 <NA>
#>    blood  1120  1194   240    0
#>    TI        0     0     0   26
#>    TU        0     0     0   26

with(sampDesc %>% dplyr::filter(sampType=='blood'), table(outcome, trainValGroup, exclude=NULL))
#>            trainValGroup
#> outcome     Train Val-1 Val-2
#>   Benign      253   132     3
#>   CHB         190    96     0
#>   Cirrhosis    73    33     0
#>   HCC         335   809    60
#>   Healthy     269   124   177

with(sampDesc %>% dplyr::filter(sampType=='blood'), table(outcome2, trainValGroup, exclude=NULL))
#>                trainValGroup
#> outcome2        Train Val-1 Val-2
#>   BenignHealthy   522   256   180
#>   CirrhosisCHB    263   129     0
#>   HCC             335   809    60

with(sampDesc %>% dplyr::filter(sampType=='blood'), table(outcome3, trainValGroup, exclude=NULL))
#>         trainValGroup
#> outcome3 Train Val-1 Val-2
#>   HCC      335   809    60
#>   nonHCC   785   385   180
```

## Package page

  - <https://12379monty.github.io/GSE112679/>

<!-- DOESNT WORK WITH GITHUB
## References
<div id="refs"></div>
-->

-----

Please note that the ‘GSE112679’ project is released with a [Contributor
Code of Conduct](.github/CODE_OF_CONDUCT.md). By contributing to this
project, you agree to abide by its terms.

<!--

Rscript -e "rmarkdown::render('README.Rmd')"

# nohup Rscript -e "rmarkdown::render('README.Rmd')" > README.log  &


-->
