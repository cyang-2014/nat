% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/im3d.R
\name{imscalebar}
\alias{imscalebar}
\title{Make a scalebar to accompany an image.im3d plot}
\usage{
imscalebar(levels, col, nlevels = NULL, zlim = NULL, horizontal = TRUE,
  lab = "Density", mar = c(4, 2, 2, 2) + 0.1, border = NULL, ...)
}
\arguments{
\item{levels}{The levels at which z values were cut \strong{or} a list 
returned by \code{\link{image.im3d}}}

\item{col}{The plotted colours for each level}

\item{nlevels}{The number of colour levels (inferred from levels when 
\code{NULL})}

\item{zlim}{The limits of the plotted z (intensity) values of the image}

\item{horizontal}{Whether to make a horizontal or vertical scalebar (default:
TRUE)}

\item{lab}{The (single) axis label for the scale bar (default: 
\code{Density})}

\item{mar}{The margins for ths plot}

\item{border}{Color for rectangle border (see \code{\link{rect}}'s 
\code{border} argument for details).}

\item{\dots}{Additional arguments for \code{plot}}
}
\description{
Make a scalebar to accompany an image.im3d plot
}
\examples{
\dontrun{
LHMask=read.im3d(system.file('tests/testthat/testdata/nrrd/LHMask.nrrd',package='nat'))
op=par(no.readonly = TRUE)
layout(matrix(c(1, 2), ncol = 2L), widths = c(1, 0.2))
rval=image(imslice(LHMask,10), asp=TRUE)
imscalebar(rval)
par(op)
}
}

