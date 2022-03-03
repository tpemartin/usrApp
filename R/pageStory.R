tag_pageStory <-function(){
  tags$div(class = "pageStory",
    tags$div(class = "pageStory-navbar",
      tags$div(class = "pageStory-navbar-logo"),
      tags$div(class = "pageStory-navbar-iconMore")),
    tags$div(class = "pageStory-stories",
      tags$div(class = "pageStory-stories-cards"),
      tags$div(class = "pageStory-stories-sidenave")),
    tags$div(class = "pageStory-footer",
      tags$div(class = "pageStory-footer-home"),
      tags$div(class = "pageStory-footer-story"),
      tags$div(class = "pageStory-footer-event"),
      tags$div(class = "pageStory-footer-list")))
}
pageStory_dependency <- function(){
  htmltools::tagList(
    htmltools::htmlDependency(
    name="pageStory",
    version="1.0.0",
    src=c(file=normalizePath("./assets/css")),
    style="pageStory.css",
    all_files = F
    ),
    htmltools::htmlDependency(
      name="img",
      version="1",
      src=c(file=normalizePath("./assets/img")),
      attachment="",
      all_files=T
    )
  )}
ui_pageStory <- function(dependency=NULL){
  tagList(tag_pageStory(), pageStory_dependency(), dependency)
}
# ui_pageStory() |> browseTag2()
