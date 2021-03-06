% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neuronlistfh.R
\name{[.neuronlistfh}
\alias{[.neuronlistfh}
\title{Extract from neuronlistfh object or its attached data.frame}
\usage{
\method{[}{neuronlistfh}(x, i, j, drop)
}
\arguments{
\item{x}{A neuronlistfh object}

\item{i, j}{elements to extract or replace. Numeric, logical  or character or,
for the [ get method, empty. See details and the help for 
\code{\link{[.data.frame}}.}

\item{drop}{logical.  If \code{TRUE} the result is coerced to the
    lowest possible dimension.  The default is to drop if only one
    column is left, but \bold{not} to drop if only one row is left.}
}
\value{
A new in-memory \code{neuronlist} or when using two subscripts, a 
  \code{data.frame} - see examples.
}
\description{
\code{[.neuronlistfh} extracts either a sublist from a 
  neuronlistfh (converting it to a regular in memory list in the process) 
  \emph{or} its attached data.frame.
}
\details{
Note that if i is a numeric or logical indexing vector, it will be 
  converted internally to a vector of names by using the (sorted) names of 
  the objects in x (i.e. names(x)[i])
}
\examples{
# make a test neuronlistfh backed by a temporary folder on disk
tf=tempfile('kcs20fh')
kcs20fh<-as.neuronlistfh(kcs20, dbdir=tf)

# get first neurons as an in memory neuronlist
class(kcs20fh[1:3])

# extract attached data.frame
str(kcs20fh[,])
# or part of the data.frame
str(kcs20fh[1:2,1:3])

# data.frame assignment (this one changes nothing)
kcs20fh[1:2,'gene_name'] <- kcs20fh[1:2,'gene_name']

# clean up
unlink(tf, recursive=TRUE)

}
\seealso{
\code{\link{neuronlistfh}}, \code{\link{[.neuronlist}}, 
  \code{\link{[.data.frame}}, \code{\link{[<-.data.frame}},

Other neuronlistfh: \code{\link{neuronlistfh}},
  \code{\link{read.neuronlistfh}},
  \code{\link{remotesync}},
  \code{\link{write.neuronlistfh}}
}

