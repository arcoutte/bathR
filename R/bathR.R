#' I am a bathR
#'
#' @return Some ASCI-bathing love
#' @param bathRs double The ASCII image you wish to print to the console
#' @export
#'
#' @examples
#' bathR()
bathR <- function( bathRs = 1){
  if( bathRs > length( bathR:::art )) stop( sprintf( "You've asked more than I can give! max(bathRs) == %d", length( bathR:::art )))
  eval( parse( text = sprintf("cat( bathR:::art$bath%d, sep = '\\n')", bathRs)))
}



