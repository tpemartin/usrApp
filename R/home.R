tag_home <-function(){
  tagList(
    tags$div(class = "home-maskGroup",
      tags$div(class = "home-maskGroup-maskImg"),
      tags$div(class = "home-maskGroup-filterColor")),
    tags$div(class = "home",
      tags$div(class = "home-maskGroup",
        tags$div(class = "home-maskGroup-maskImg"),
        tags$div(class = "home-maskGroup-filterColor")))
  )
}
home_dependency <- function(){
  htmltools::htmlDependency(
    name="usrApp",
    version="1.0.0",
    src=c(file=system.file("/usrapp/css",  package = "usrApp")),
    style="home.css",
    all_files = F
  )}
ui_home <- function(dependency=img_dependency()){
  tagList(tag_home(), home_dependency(), dependency)
}
# ui_home() |> econWeb::browseTag2()
