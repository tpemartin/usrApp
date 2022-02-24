tag_icon <- function(type=NULL, dependency=NULL){
  tagList(
    tags$div(
      class=paste("category-icon", type)
    ),
    includeCSS("assets/css/card.css"),
    dependency
  )
}

# tag_icon("elderly", image_dependency())|> browseTag2()
tag_cardCategory <-function(type=NULL, dep=NULL){
  catname <- NULL
  if(!is.null(type)){
    switch(
      type,
      "feature"="花絮",
      "college"='臺北大學城',
      NULL
    ) -> catname
  }

  tags$div(class = "cardLarge-content-category",
    tag_icon(type),
    tags$div(class = "cardLarge-content-category-name",
      catname)) |>
    tagList(dep)

}
tag_cardLarge2 <-function(title=NULL, category=NULL, background_img=NULL){
  tags$div(class = "cardLarge",
    tags$div(class = "cardLarge-background",
      tags$div(class = "cardLarge-background-image",
        style=glue::glue("background-image:url({background_img});"))),
    tags$div(class = "cardLarge-content",
      tag_cardCategory(category),
      tags$div(class = "cardLarge-content-title",
        title)))
}
ui_cardLarge2 <- function(title, category, background_img, dependency=NULL){
  tagList(tag_cardLarge2(title, category, background_img), cardLarge_dependency(), dependency)
}

