#' Create card
#'
#' @param categoryname
#' @param title
#' @param imgUrl
#' @param dependency default=NULL
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' card(
#'   categoryname="臺北大學城",
#'   title="【USR】社科院USR專書出版-「大學責任與高齡學習」",
#'   imgUrl ="https://miro.medium.com/max/1400/1*2v4yO6cR2XOSlI65Ge6GrA.jpeg"
#' ) |> browseTag2()}
card <- function(categoryname,title,imgUrl,dependency=NULL){
  tagList(tag_card(categoryname, title, imgUrl), card_dependency(), dependency)
}

# helpers -----------------------------------------------------------------
tag_card <-function(categoryname,title,imgUrl){
  tags$div(class = "cardLarge",
    cardBackground(imgUrl),
    tags$div(class = "cardLarge-content",
      category(categoryname),
      tags$div(class = "cardLarge-content-title",
        title)))
}
card_dependency <- function(){
  htmltools::tagList(
    htmltools::htmlDependency(
      name="card",
      version="1.0.0",
      src=c(file=normalizePath("./assets/css")),
      style="card.css",
      all_files = F
    ),
    htmltools::htmlDependency(
      name="img",
      version="1",
      src=c(file=normalizePath("./assets/img")),
      attachment="",
      all_files=T
    )
  )
}

category <- function(categoryname){
  tags$div(class = "cardLarge-content-category",
    tags$div(class = "cardLarge-content-category-icon",
      iconImage(categoryname)),
    tags$div(class = "cardLarge-content-category-name",
      categoryname))
}
cardBackground <- function(imgUrl){
  paste("background-image:",
    paste0("url(",imgUrl,");")) -> backgroundUrl

  tags$div(class = "cardLarge-background",
    tags$div(class = "cardLarge-background-image",
      style=backgroundUrl))
}
iconImage <- function(categoryname){
  switch(
    categoryname,
    "臺北大學城"={
      "iconCollege.png"
    },
    "世代共融"="generation.png",
    "活躍老化"="elderly.png",
    "在地實踐"="usr.png",
    "USR論壇"="forum.png",
    "花絮"="feature.png"
  ) -> imgfile
  categoryImgPath = file.path(
    "lib/img-1", imgfile
  )
  tags$div(class = "cardLarge-content-category-icon-image",
    style=
      glue::glue("background: url({categoryImgPath})"))
}
