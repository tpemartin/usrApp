tag_poster <-function(title, date, imgSrc){
  tags$div(class = "posterFront",
    tags$div(class = "posterFront-container",
      tags$div(class = "posterFront-container-image",
        style=css(`background-image`=glue::glue("url({imgSrc})")))),
    tags$div(class = "posterFront-titleDetail",
      tags$div(class = "posterFront-titleDetail-container",
        tags$div(class = "posterFront-titleDetail-container-date", date),
        tags$div(class = "posterFront-titleDetail-container-title", title)),
      tags$div(class="posterFront-fixbar",
        tags$div(class="btnDetail"),
        btn_addCalendar2(),
        btnSignup())
      ))
}

# poster_dependency <- function(){
#   htmltools::htmlDependency(
#     name="usrApp",
#     version="1.0.0",
#     src=c(file=system.file("/usrapp", package = "usrApp")),
#     style="poster.css",
#     all_files = F
#   )}
ui_poster <- function(title="USR公民培訓課程：UI設計神器Figma", date="4.26, 4.29", imgSrc="lib/usrApp-1.0.0/img/figmaposter-sm.jpg", dependency=NULL){
  tagList(tag_poster(title, date, imgSrc), jquery_dependency(), poster_dependency(), img_dependency(), dependency)
}
ui_poster() |> econWeb::browseTag2()
