tag_navbar <-function(){
  tags$div(class = "navbar",
    tags$div(class = "navbar-logo",
      tags$img(src = "lib/image-1/img/logo-usr.svg")),
    tags$div(class = "navbar-more",
      tags$img(src = "lib/image-1/img/icon-more.svg")))
}
navbar_dependency <- function(){
  htmltools::htmlDependency(
    name="navbar",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="navbar.css",
    all_files = F
  )}
ui_navbar <- function(dependency=NULL){
  tagList(tag_navbar(), navbar_dependency(), dependency)
}
# ui_navbar() |> browseTag2()
