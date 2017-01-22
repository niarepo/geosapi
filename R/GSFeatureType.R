#' Geoserver REST API Resource
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' 
#' @name GSFeatureType
#' @title A GeoServer feature type
#' @description This class models a GeoServer feature type. This class is to be
#' used for manipulating representations of vector data with GeoServer.
#' @keywords geoserver rest api resource featureType
#' @return Object of \code{\link{R6Class}} for modelling a GeoServer feature type
#' @format \code{\link{R6Class}} object.
#' 
#' @examples
#' ft <- GSFeatureType$new()
#'
#' @section Methods:
#' \describe{
#'  \item{\code{new(rootName, xml)}}{
#'    This method is used to instantiate a GSResource
#'  }
#'  \item{\code{decode(xml)}}{
#'    This method is used to decode a GSResource from XML
#'  }
#'  \item{\code{encode()}}{
#'    This method is used to encode a GSFeatureType to XML. Inherited from the
#'    generic \code{GSRESTResource} encoder
#'  }
#' }
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#'
GSFeatureType <- R6Class("GSFeatureType",
  inherit = GSResource,

  public = list(
    initialize = function(xml = NULL){
      super$initialize(rootName = "featureType")
      if(!missing(xml) & !is.null(xml)){
        self$decode(xml)
      }
    },
    
    decode = function(xml){
      super$decode(xml)
    }
  
  )
                    
)