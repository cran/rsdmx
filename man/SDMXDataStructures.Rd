% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Class-SDMXDataStructures.R,
%   R/SDMXDataStructures-methods.R
\docType{class}
\name{SDMXDataStructures}
\alias{SDMXDataStructures}
\alias{SDMXDataStructures-class}
\alias{SDMXDataStructures,SDMXDataStructures-method}
\title{Class "SDMXDataStructures"}
\usage{
SDMXDataStructures(xmlObj, namespaces)
}
\arguments{
\item{xmlObj}{object of class "XMLInternalDocument derived from XML package}

\item{namespaces}{object of class "data.frame" given the list of namespace URIs}
}
\value{
an object of class "SDMXDataStructures"
}
\description{
A basic class to handle a SDMX DataStructures (or KeyFamilies)
}
\section{Slots}{

\describe{
\item{\code{datastructures}}{Object of class "list" giving the list of DataStructures, 
(see \link{SDMXDataStructure})}
}}

\section{Warning}{

This class is not useful in itself, but all SDMX non-abstract classes will 
encapsulate it as slot, when parsing an SDMX-ML document (Concepts, or 
DataStructureDefinition)
}

\seealso{
\link{readSDMX}
}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
