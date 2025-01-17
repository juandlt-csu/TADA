% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GeospatialFunctions.R
\name{fetchATTAINS}
\alias{fetchATTAINS}
\title{fetchATTAINS}
\usage{
fetchATTAINS(data, type = NULL)
}
\arguments{
\item{data}{A dataframe developed using \code{TADA_DataRetrieval()} or \code{TADA_MakeSpatial()}.}

\item{type}{The type of ATTAINS data you would like to fetch ("lines", "points", "polygons", "catchments"). All ATTAINS features are returned in WGS84 (crs = 4326).}
}
\value{
spatial features that are within the spatial bounding box of water quality observations.
}
\description{
Fetch ATTAINS features within a bounding box produced from a set of TADA spatial features.
}
\examples{
\dontrun{
tada_data <- TADA_DataRetrieval(startDate = "1990-01-01",
                               endDate = "1995-12-31",
                               characteristicName = "pH",
                               statecode = "NV",
                               applyautoclean = TRUE)
                                 
nv_attains_lines <- fetchATTAINS(data = tada_data, type = "lines")
}
}
\seealso{
\code{\link[=TADA_MakeSpatial]{TADA_MakeSpatial()}}

\code{\link[=TADA_DataRetrieval]{TADA_DataRetrieval()}}
}
