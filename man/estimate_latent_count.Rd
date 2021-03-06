% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{estimate_latent_count}
\alias{estimate_latent_count}
\title{Estimate number of latent confounders
Compute the true casual effects of a simulated dag}
\usage{
estimate_latent_count(X1, X2, method = "auto")
}
\arguments{
\item{X1}{data matrix corresponding to the first condition}

\item{X2}{data matrix corresponding to the second condition}

\item{method}{a string indicating the method used for estimating the number
of latent variables}
}
\value{
estimated number of latent variables
}
\description{
This function takes a DAG with edgeweights as input and computes
the causal effects of all nodes on all direct and indirect children in the
DAG. Alternatively see pcalg::causalEffect for pairwise computation.
}
\examples{
graph1 <- create_random_DAG(node_num = 100, prob = .1)
graph2 <- resample_edge_weights(graph1, tp=0.15)
X1 <- simulate_data(graph1, n=200, latent = 3)
X2 <- simulate_data(graph2, n=200, latent = 3)
estimate_latent_count(X1, X2)
}
\author{
Domagoj Ćevid
}
