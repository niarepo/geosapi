% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GSStyleManager.R
\docType{class}
\name{GSStyleManager}
\alias{GSStyleManager}
\title{Geoserver REST API Style Manager}
\format{\code{\link{R6Class}} object.}
\usage{
GSStyleManager
}
\value{
Object of \code{\link{R6Class}} with methods for managing the styles
of a GeoServer instance.
}
\description{
Geoserver REST API Style Manager
}
\section{Methods}{

\describe{
 \item{\code{new(url, user, pwd, logger)}}{
   This method is used to instantiate a GSManager with the \code{url} of the
   GeoServer and credentials to authenticate (\code{user}/\code{pwd}). By default,
   the \code{logger} argument will be set to \code{NULL} (no logger). This argument
   accepts two possible values: \code{INFO}: to print only geosapi logs,
   \code{DEBUG}: to print geosapi and CURL logs
 }
 \item{\code{getStyles()}}{
   Get the list of available styles. Returns an object of class \code{list}
   containing items of class \code{\link{GSStyle}}
 }
 \item{\code{getStyleNames()}}{
   Get the list of available style names. Returns an vector of class 
   \code{character}
 }
 \item{\code{getStyle(style)}}{
   Get a \code{\link{GSStyle}} object given a style name.
 }
 \item{\code{createStyle(file, sldBody, name, raw, ws)}}{
   Creates a GeoServer style given a name. Returns \code{TRUE} if the style 
   has been successfully created, \code{FALSE} otherwise
 }
 \item{\code{updateStyle(file, sldBody, name, raw, ws)}}{
   Updates a GeoServer style. Returns \code{TRUE} if the style has been 
   successfully updated, \code{FALSE} otherwise
 }
 \item{\code{deleteStyle(style, recurse, purge, ws)}}{
   Deletes a GeoServer style given a name. Returns \code{TRUE} if the style 
   has been successfully deleted, \code{FALSE} otherwise
 }
 \item{\code{getSLDVersion(sldBody)}}{
   Get the SLD version from the XML object (of class \code{XMLInternalDocument})
 }
 \item{\code{getSLDBody(style, ws = NULL)}}{
   Get the SLD Body given a style name. This method is only supported for
   Geoserver >= 2.2.
 }
}
}

\examples{
\dontrun{
   GSStyleManager$new("http://localhost:8080/geoserver", "admin", "geoserver")
}

}
\author{
Emmanuel Blondel <emmanuel.blondel1@gmail.com>
}
\keyword{api}
\keyword{geoserver}
\keyword{rest}
\keyword{style}
