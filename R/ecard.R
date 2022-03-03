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
        tags$div(class = "card-content-word-title",
          "trick"),
        tags$div(class = "card-content-word-pronun",
          "US /trɪk/       US /trɪk/"),
        tags$div(class = "card-content-word-explain",
          "adj. 虛弱的；欺詐的
n. 戲法；竅門；訣竅；把戲；特技")),
      tags$div(class = "card-content-btn",
        tags$div(class = "card-content-btn-level",
          "A2 初級")),
      cardContentTeacher()))
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
