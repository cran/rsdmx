% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SDMXServiceProvider-methods.R
\name{findSDMXServiceProvider}
\alias{findSDMXServiceProvider}
\title{findSDMXServiceProvider}
\usage{
findSDMXServiceProvider(agencyId)
}
\arguments{
\item{agencyId}{an object of class "character" representing a provider 
identifier}
}
\value{
an object of class "SDMXServiceProvider" (or NULL if no matching)
}
\description{
function that allows searching by provider id in the list of 
             known \link{SDMXServiceProvider}. This function can be used for 
             interrogating the list of default providers known by \pkg{rsdmx}, 
             and is used internally by \link{readSDMX}
}
\examples{
  #find OECD provider
  oecd.provider <- findSDMXServiceProvider("OECD")
  
}
\seealso{
\link{getSDMXServiceProviders} \link{addSDMXServiceProvider}
         \link{readSDMX}
}
\author{
Emmanuel Blondel, \email{emmanuel.blondel1@gmail.com}
}
