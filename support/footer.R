tag_footer <-function(){
  tags$div(class = "footer",
    tags$div(class = "footer-home",
      # tags$img(src = "lib/image-1/img/icon-home.svg")
      htmltools::includeHTML("assets/img/icon-home.svg")
      ),
    tags$div(class = "footer-story",
      tags$img(src = "lib/image-1/img/icon-story.svg")),
    tags$div(class = "footer-event",
      tags$img(src = "lib/image-1/img/icon-event.svg")),
    tags$div(class = "footer-list",
      tags$img(src = "lib/image-1/img/icon-list.svg")))
}
footer_dependency <- function(){
  htmltools::htmlDependency(
    name="footer",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="footer.css",
    all_files = F
  )}
ui_footer <- function(dependency=NULL){
  tagList(tag_footer(), footer_dependency(), dependency)
}
ui_footer(
  image_dependency()
) |> browseTag2()
