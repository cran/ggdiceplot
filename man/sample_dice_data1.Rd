\name{sample_dice_data1}
\alias{sample_dice_data1}
\docType{data}
\title{
Sample Dice Dataset for Basic Visualization
}
\description{
A toy dataset for demonstrating the \code{geom_dice()} function. It simulates 
log fold-change (LFC) and adjusted p-values (q-values) for oral taxa across 
disease types and specimen sites.
}
\usage{data("sample_dice_data1")}
\format{
  A data frame with 48 rows and 5 variables:
  \describe{
    \item{\code{taxon}}{character. Microbial taxon name}
    \item{\code{disease}}{character. Disease condition (Caries, Periodontitis, Healthy, Gingivitis)}
    \item{\code{specimen}}{character. Body site specimen (Saliva, Plaque)}
    \item{\code{lfc}}{numeric. Simulated log2 fold change value}
    \item{\code{q}}{numeric. Simulated adjusted p-value (q-value)}
  }
}
\details{
This dataset contains simulated microbiome data across different oral health 
conditions and specimen types. It is designed to demonstrate basic dice plot 
functionality with categorical mapping of diseases to dice positions.
}
\source{
Simulated data for package demonstration purposes.
}
\examples{
data(sample_dice_data1)
head(sample_dice_data1)

# Basic dice plot example
library(ggplot2)
ggplot(sample_dice_data1, aes(x = specimen, y = taxon)) +
  geom_dice(aes(dots = disease, fill = lfc, size = -log10(q)),
            ndots = 4, show.legend = TRUE)
}
\keyword{datasets}