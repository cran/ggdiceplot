\name{sample_dice_large}
\alias{sample_dice_large}
\docType{data}
\title{
Large Sample Dataset for Performance Testing
}
\description{
A larger toy dataset for testing \code{geom_dice()} performance and 
demonstrating scalability with bigger datasets.
}
\usage{data("sample_dice_large")}
\format{
  A data frame with variables:
  \describe{
    \item{\code{taxon}}{character. Microbial taxon name}
    \item{\code{disease}}{character. Disease condition}
    \item{\code{specimen}}{character. Body site specimen}
    \item{\code{replicate}}{numeric. Replicate number}
    \item{\code{lfc}}{numeric. Log2 fold change value}
    \item{\code{q}}{numeric. Adjusted p-value (q-value)}
  }
}
\details{
This dataset contains a larger number of observations than the basic sample 
datasets. It is designed to test performance and demonstrate how dice plots 
scale with larger data, including automatic sizing and boundary validation.
}
\source{
Simulated data for package demonstration purposes.
}
\examples{
data(sample_dice_large)
head(sample_dice_large)
dim(sample_dice_large)

# Example with larger dataset
library(ggplot2)
ggplot(sample_dice_large, aes(x = specimen, y = taxon)) +
  geom_dice(aes(dots = disease, fill = lfc, size = -log10(q)),
            ndots = 6, na.rm = TRUE, show.legend = TRUE) +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 8))
}
\keyword{datasets}