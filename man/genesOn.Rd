% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filterGenes.R
\name{genesOn}
\alias{genesOn}
\title{Retrieve Genes by their Genome Features}
\usage{
genesOn(value, attribute)
}
\arguments{
\item{value}{a value or a list of values that are the genome features to filter}

\item{attribute}{the name(s) of the genome feature(s) in question. One or more of of 'chr', 'arm', 'start', 'end'.}
}
\value{
a character vector of gene names
}
\description{
Retrieve genes by their genome features. e.g. all genes on chromosome 7.
}
\examples{
genesOn(7, 'chr')
}
