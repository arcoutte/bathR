#' I am a bathR
#'
#' @return Some ASCI-bathing love
#' @param x double The ASCII image you wish to print to the console
#' @export
#'
#' @examples
#' bathR()
bathR <- function( x = NULL){
  # random sample, if not explicit
  if( is.null( x)) x <- sample( 1: length( bathR:::art ))
  # only allow 1:max()
  if( ! is.null(x)){
    if( x > length( bathR:::art )) stop( sprintf( "You've asked more than I can give! max( x) == %d", length( bathR:::art )))
  }
  # cat your bathR
  eval( parse( text = sprintf("cat( bathR:::art$bath%d, sep = '\\n')", x)))
}



