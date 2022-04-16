app_dependency <- share_dependency <- btnAddCalendar_dependency <-posterFront_dependency <-function(){
  htmltools::htmlDependency(
    name="usrApp",
    version="1.0.0",
    src=c(file=system.file("/usrapp", package = "usrApp")),
    style="css/main.css",
    script=c("js/share.js","js/btnPress.js"),
    all_files = T
  )}
img_dependency <- function(){
  htmltools::htmlDependency(
    name="usrAppImg",
    version="1.0.0",
    src=c(file=system.file("/img", package = "usrApp")),
    attachment = "",
    all_files = T
  )}
# btnAddCalendar_dependency <- function(){
#   htmltools::htmlDependency(
#     name="usrApp",
#     version="1.0.0",
#     src=c(file=system.file("/usrapp/css",  package = "usrApp")),
#     style="btnAddCalendar.css",
#     all_files = F
#   )}
# posterFront_dependency <- function(){
#   htmltools::htmlDependency(
#     name="usrApp",
#     version="1.0.0",
#     src=c(file=system.file("/usrapp/css",  package = "usrApp")),
#     style="posterFront.css",
#     all_files = F
#   )}
jquery_dependency = function(){
  htmltools::htmlDependency(
    name="jquery",
    version="3.6.0",
    src=c(href="https://code.jquery.com"),
    script="jquery-3.6.0.min.js"
  )
}
