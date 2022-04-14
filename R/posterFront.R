tag_posterFront <-function(){
  tags$div(class = "posterFront",
    tags$div(class = "posterFront-container",
      tags$div(class = "posterFront-container-image"),
      tags$div(class = "posterFront-container-btnFixer")),
    tags$div(class = "posterFront-titleDetail",
      tags$div(class = "posterFront-titleDetail-title"),
      tags$div(class = "posterFront-titleDetail-detail")))
}
posterFront_dependency <- function(){
  htmltools::htmlDependency(
    name="usrApp",
    version="1.0.0",
    src=c(file=system.file("/usrapp/css",  package = "usrApp")),
    style="posterFront.css",
    all_files = F
  )}
ui_posterFront <- function(dependency=NULL){
  tagList(tag_posterFront(), posterFront_dependency(), dependency)
}
ui_posterFront() |> econWeb::browseTag2()
