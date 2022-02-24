tag_cardLarge <-function(title){
  tags$div(class = "cardLarge",
    tags$div(class = "cardLarge-background",
      tags$div(class = "cardLarge-background-image")),
    tags$div(class = "cardLarge-content",
      tags$div(class = "cardLarge-content-category",
        tags$div(class = "cardLarge-content-category-icon",
          tags$img(class = "icon-college",
            src = "lib/image-1/img/icon-college.png")),
        tags$div(class = "cardLarge-content-category-name",
          "臺北大學城")),
      tags$div(class = "cardLarge-content-title",
        title)))
}
cardLarge_dependency <- function(){
  htmltools::htmlDependency(
    name="cardLarge",
    version="1.0.0",
    src=c(file=normalizePath("./assets/css")),
    style="cardLarge.css",
    all_files = F
  )}
ui_cardLarge <- function(title, dependency=NULL){
  tagList(tag_cardLarge(title), cardLarge_dependency(), dependency)
}

