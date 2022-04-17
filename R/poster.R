tag_poster <-function(title, date, imgSrc, context){
  tags$div(class = "posterFront",
    tags$div(class = "posterFront-container", id="front",
      tags$div(class = "posterFront-container-image",
        style=css(`background-image`=glue::glue("url({imgSrc})")))),
    tags$div(class = "posterBack-container", id="back",
      style="display:none;",
      tags$div(class = "posterBack-container-text",
        tags$div(class="posterContext", context))),
    tags$div(class = "posterFront-titleDetail",
      tags$div(class = "posterFront-titleDetail-container",
        tags$div(class = "posterFront-titleDetail-container-date", date),
        tags$div(class = "posterFront-titleDetail-container-title", title)),
      tags$div(class="posterFront-fixbar",
        tags$div(id="detail-return",
          class="detailReturn",
        tags$div(class="btnDetail"),
          tags$div(class="btnReturn", style="display:none;")),
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
poster <- function(title="USR公民培訓課程：UI設計神器Figma", date="4.26, 4.29", imgSrc="lib/usrApp-1.0.0/img/figmaposter-sm.jpg", context="test", dependency=NULL){
  tagList(tag_poster(title, date, imgSrc, context),
    meta_dep(), jquery_dependency(), poster_dependency(),  img_dependency(), dependency)
}
# poster() |> econWeb::browseTag2()
