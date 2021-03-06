% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neuron-plot.R
\name{plot3d.boundingbox}
\alias{plot3d.boundingbox}
\title{Plot a bounding box in 3D}
\usage{
\method{plot3d}{boundingbox}(x, ...)
}
\arguments{
\item{x}{the \code{\link{boundingbox}} object to plot.}

\item{...}{additional arguments to pass to \code{\link[rgl]{segments3d}}.}
}
\value{
A list of RGL object IDs.
}
\description{
Plot a bounding box in 3D
}
\examples{
# find the bounding box of all the neurons in a list
boundingbox(kcs20)
boundingbox(kcs20[1:3])
\donttest{
# plot those neurons
plot3d(kcs20)
# ... with their bounding box
plot3d(boundingbox(kcs20))

plot3d(kcs20)
# plot bounding box (in matching colours) for each neuron
# NB makes use of nlapply/neuronlist in slightly unsusual context - 
# plot3d.neuronlist can cope with lists containing anything with
# a valid plot3d method.
plot3d(nlapply(kcs20,boundingbox))
}

}
\seealso{
\code{\link{boundingbox}}
}

