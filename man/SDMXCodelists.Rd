% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Class-SDMXCodelists.R,
%   R/SDMXCodelists-methods.R
\docType{class}
\name{SDMXCodelists}
\alias{SDMXCodelists}
\alias{SDMXCodelists-class}
\alias{SDMXCodelists,SDMXCodelists-method}
\title{Class "SDMXCodelists"}
\usage{
SDMXCodelists(xmlObj, namespaces)
}
\arguments{
\item{xmlObj}{object of class "XMLInternalDocument derived from XML package}

\item{namespaces}{object of class "data.frame" given the list of namespace URIs}
}
\value{
an object of class "SDMXCodelists"
}
\description{
A basic class to handle SDMX Codelists
}
\section{Slots}{

\describe{
\item{\code{codelists}}{Object of class "list" giving the list of "SDMXCodelist"}
}}

\section{Warning}{

This class is not useful in itself, but \link{SDMXDataStructureDefinition} objects
will encapsulate it as slot, when parsing an SDMX-ML document.
}

\seealso{
\link{readSDMX}
}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
