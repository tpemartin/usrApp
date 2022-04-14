share_dependency <- function(){
  htmltools::htmlDependency(
    name="usrApp",
    version="1.0.0",
    src=c(file=system.file("/usrapp", package = "usrApp")),
    style="css/share.css",
    script="js/share.js",
    all_files = F
  )}
img_dependency <- function(){
  htmltools::htmlDependency(
    name="usrAppImg",
    version="1.0.0",
    src=c(file=system.file("/img", package = "usrApp")),
    attachment = "",
    all_files = T
  )}
jquery_dependency = function(){
  htmltools::htmlDependency(
    name="jquery",
    version="3.6.0",
    src=c(href="https://code.jquery.com"),
    script="jquery-3.6.0.min.js"
  )
}