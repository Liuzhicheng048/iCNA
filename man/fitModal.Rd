% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitModal.R
\name{fitModal}
\alias{fitModal}
\title{Fit a Bimodal Gaussian Distribution}
\usage{
fitModal(
  x,
  m,
  prob = 0.95,
  coverage = 0.8,
  size = 10,
  assign = FALSE,
  boolean = FALSE,
  verbose = TRUE,
  maxit = 5000,
  maxrestarts = 100,
  bySampling = FALSE,
  nsamp = 200,
  ...
)
}
\arguments{
\item{x}{a named numeric vector of cells/observations or a matrix of genes X cells (variables X observations). If the latter, the column means are first computed.}

\item{m}{number of components (modes). Default: 2}

\item{prob}{a numeric value >= 0 and <= 1; the minimum posterior probability required for an observation to be assigned to a mode. Default: 0.95}

\item{coverage}{the fraction of observations that must have a posterior probability higher than <prob> to one of two modes in order for the distribution to qualify as bimodal. Default: 0.8}

\item{size}{the minimum number of observations that must be assigned to a mode in order for the distribution to qualify as bimodal. Default: 10}

\item{assign}{if set to TRUE, returns a list of length two containing the vector names that were assigned to each mode. Default: FALSE}

\item{boolean}{if set to TRUE, returns a boolean value indicating whether the distribution is bimodal. Default: FALSE}

\item{verbose}{print progress messages. Default: TRUE}

\item{maxit}{the maximum number of iterations. Default: 5000}

\item{maxrestarts}{the maximum number of restarts allowed. See \code{\link[mixtools]{normalmixEM}} for details. Default: 100}
}
\value{
The posterior probabilities of each observation to one of two modes. If boolean = TRUE, return a boolean value indicating whether bimodality was found. If assign = TRUE, return a list of length two with the observations (IDs) in each mode.
}
\description{
Fit a bimodal gaussian distribution to a set of observations.
}
\seealso{
\code{\link[mixtools]{normalmixEM}}
}
