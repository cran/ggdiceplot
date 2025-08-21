\name{sample_dice_data2}
\alias{sample_dice_data2}
\docType{data}
\title{
Extended Sample Dice Dataset
}
\description{
An extended toy dataset for demonstrating advanced \code{geom_dice()} 
functionality with missing data handling and more complex scenarios.
}
\usage{data("sample_dice_data2")}
\format{
  A data frame with variables:
  \describe{
    \item{\code{taxon}}{character. Microbial taxon name}
    \item{\code{disease}}{character. Disease condition}
    \item{\code{specimen}}{character. Body site specimen}
    \item{\code{replicate}}{numeric. Replicate number}
    \item{\code{lfc}}{numeric. Log2 fold change value (may contain NA)}
    \item{\code{q}}{numeric. Adjusted p-value (q-value, may contain NA)}
  }
}
\details{
This dataset extends sample_dice_data1 with additional complexity including 
missing values and edge cases. It is designed to demonstrate how dice plots 
handle missing data and various data preprocessing scenarios.
}
\source{
Simulated data for package demonstration purposes.
}
\examples{
data(sample_dice_data2)
head(sample_dice_data2)

# Example with missing data handling
library(ggplot2)
ggplot(sample_dice_data2, aes(x = specimen, y = taxon)) +
  geom_dice(aes(dots = disease, fill = lfc, size = -log10(q)),
            ndots = 4, na.rm = TRUE, show.legend = TRUE)
}
\keyword{datasets}