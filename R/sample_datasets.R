#' Example dice dataset 1
#'
#' Small toy dataset shipped with **ggdiceplot** and used in basic examples
#' of `geom_dice()`.
#'
#' @format A data frame with 5 columns:
#' \describe{
#'   \item{taxon}{Taxonomic unit (e.g. genus or species).}
#'   \item{disease}{Disease / condition group (factor).}
#'   \item{specimen}{Sample / specimen identifier.}
#'   \item{lfc}{Numeric effect size (log2 fold change).}
#'   \item{q}{Numeric q-value / FDR associated with the effect.}
#' }
#'
#' @usage data(sample_dice_data1)
#' @docType data
#' @keywords datasets
"sample_dice_data1"


#' Example dice dataset 2
#'
#' A second toy dataset for `geom_dice()` examples.
#'
#' @format A data frame; similar structure to \code{sample_dice_data1}.
#' @usage data(sample_dice_data2)
#' @docType data
#' @keywords datasets
"sample_dice_data2"


#' Larger example dice dataset
#'
#' Larger illustrative dataset for more complex dice-plots.
#'
#' @format A data frame; similar structure to \code{sample_dice_data1}.
#' @usage data(sample_dice_large)
#' @docType data
#' @keywords datasets
"sample_dice_large"


#' Example miRNA dice dataset
#'
#' Example miRNA × compound × organ dataset used in the vignette / examples.
#'
#' @format A data frame with at least:
#' \describe{
#'   \item{miRNA}{miRNA identifier (factor).}
#'   \item{Compound}{compound / treatment (factor).}
#'   \item{Organ}{organ label (factor).}
#'   \item{log2FC}{numeric log2 fold change.}
#'   \item{direction}{factor with levels Down, Unchanged, Up.}
#' }
#' @usage data(sample_dice_miRNA)
#' @docType data
#' @keywords datasets
"sample_dice_miRNA"