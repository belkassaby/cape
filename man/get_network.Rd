% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_network.R
\name{get_network}
\alias{get_network}
\title{Convert the final results to an adjacency 
matrix.}
\usage{
get_network(
  data_obj,
  geno_obj,
  p_or_q = 0.05,
  min_std_effect = 0,
  standardize = FALSE,
  collapse_linked_markers = TRUE,
  threshold_power = 1,
  verbose = FALSE,
  plot_linkage_blocks = FALSE
)
}
\arguments{
\item{data_obj}{a \code{\link{Cape}} object}

\item{geno_obj}{a genotype object}

\item{p_or_q}{A threshold indicating the maximum adjusted p value considered 
significant. If an fdr method has been used to correct for multiple testing, 
this value specifies the maximum q value considered significant.}

\item{min_std_effect}{This numerical value offers an additional filtering
method. If specified, only interactions with standardized effect sizes greater
then the min_std_effect will be returned.}

\item{standardize}{A logical value indicating whether the values returned in
the adjacency matrix should be effect sizes (FALSE) or standardized effect
sizes (TRUE). Defaults to FALSE.}

\item{collapse_linked_markers}{A logical value. If TRUE markers are combined 
into linkage blocks based on correlation. If FALSE, each marker is treated as 
an independent observation.}

\item{threshold_power}{A numerical value indicating the power to which to 
raise the marker correlation matrix. This parameter is used in 
\code{\link{linkage_blocks_network}} to determine soft thresholding
in determining linkage block structure. 
Larger values result in more splitting of linkage blocks. Smaller values 
result in less splitting. The default value of 1 uses the unmodified
correlation matrix to determine linkage block structure.}

\item{verbose}{A logical value indicating whether to print algorithm progress
to standard out.}

\item{plot_linkage_blocks}{A logical value indicating whether to plot heatmaps
showing the marker correlation structure and where the linkage block boundaries
were drawn.}
}
\value{
This function returns the data object with an adjacency matrix defining
the final cape network based on the above parameters. The network is put into 
the slot collapsed_net if collapse_linked_markers is set to TRUE, and full_net
if collapse_linked_markers is set to FALSE. \code{\link{run_cape}} automatically
requests both networks be generated.
}
\description{
This function converts the significant cape 
interactions to an adjacency matrix, which 
is then used by \code{\link{plot_network}}
}
\examples{
\dontrun{
data_obj <- get_network(data_obj, geno_obj)
}

}
