% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Class-SDMXHeader.R, R/SDMXHeader-methods.R
\docType{class}
\name{SDMXHeader}
\alias{SDMXHeader}
\alias{SDMXHeader-class}
\alias{SDMXHeader,SDMXHeader-method}
\title{Class "SDMXHeader"}
\usage{
SDMXHeader(xmlObj, namespaces)
}
\arguments{
\item{xmlObj}{object of class "XMLInternalDocument derived from XML package}

\item{namespaces}{object of class "data.frame" given the list of namespace URIs}
}
\value{
an object of class "SDMXHeader"
}
\description{
A basic class to handle the header of a SDMX-ML document
}
\section{Slots}{

\describe{
\item{\code{ID}}{Object of class "character" giving the ID of the SDMX-ML document}

\item{\code{Test}}{Object of class "logical" indicating if the SDMX-ML document is 
disseminated for test purpose}

\item{\code{Truncated}}{Object of class "logical" indicating if the SDMX-ML document 
is truncated}

\item{\code{Name}}{Object of class "character" giving the name of SDMX-ML document}

\item{\code{Sender}}{Object of class "list" giving the id of the sender and eventually
its in name, possibly in multi-languages}

\item{\code{Receiver}}{Object of class "list" giving the id of the receiver and 
eventually its in name, possibly in multi-languages}

\item{\code{Prepared}}{Object of class "POSIXlt" giving the preparation date of the 
SDMX-ML document}

\item{\code{Extracted}}{Object of class "POSIXlt" giving the extraction date of the 
SDMX-ML document}

\item{\code{ReportingBegin}}{Object of class "POSIXlt" giving the reporting begin date 
for the data retrieved in the SDMX-ML document}

\item{\code{ReportingEnd}}{Object of class "POSIXlt" giving the reporting end date for 
the data retrieved in the SDMX-ML document}

\item{\code{Source}}{Object of class "character" giving the source of the SDMX-ML document}
}}

\note{
Some SDMXHeader properties are not yet supported and thus not available as 
"slots". These are "KeyFamilyRef", "KeyFamilyAgency", "DataSetAgency", 
"DataSetID", "DataSetAction".
}
\section{Warning}{

This class is not useful in itself, but all SDMX non-abstract classes will 
encapsulate it as slot, when parsing an SDMX-ML document
}

\seealso{
\link{readSDMX}
}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
