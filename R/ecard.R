tag_ecard <-function(){
  tags$div(class = "card",
    tags$div(class = "card-background",
      tags$div(class = "card-background-icons",
        tags$div(class = "card-background-icons-1",
          tags$div(class = "card-background-icons-1-iconVoice")),
        tags$div(class = "card-background-icons-2",
          tags$div(class = "card-background-icons-2-iconHeart")))),
    tags$div(class = "card-content",
      tags$div(class = "card-content-word",
        tags$div(class = "card-content-word-title"),
        tags$div(class = "card-content-word-pronun"),
        tags$div(class = "card-content-word-explain")),
      tags$div(class = "card-content-btn",
        tags$div(class = "card-content-btn-level")),
      tags$div(class = "card-content-teacher",
        tags$div(class = "card-content-teacher-img"),
        tags$div(class = "card-content-teacher-word"))))
}
ecard_dependency <- function(){
  htmltools::htmlDependency(
    name="ecard",
    version="1.0.0",
    src=c(file=normalizePath("./assets/css")),
    style="ecard.css",
    all_files = F
  )}
ui_ecard <- function(dependency=NULL){
  tagList(tag_ecard(), ecard_dependency(), dependency)
}
ui_ecard() |> browseTag2()
