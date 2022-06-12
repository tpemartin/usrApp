update_card_thumbnail <- function(){
  fig <- econWeb::Fig()
  fig$export("inst/usrapp/css/card_thumbnail")
}
tag_card_thumbnail <-function(date, event, imgUrl){
  tags$div(class = "card_thumbnail",
    tags$div(class = "card_thumbnail-thumbnail"),
    tags$div(class = "card_thumbnail-division"),
    tags$div(class = "card_thumbnail-dateEvent",
      tags$div(class = "card_thumbnail-dateEvent-date", date),
      tags$div(class = "card_thumbnail-dateEvent-event", event)))
}
# card_thumbnail_dependency <- function(){
#   htmltools::htmlDependency(
#     name="usrApp",
#     version="1.0.0",
#     src=c(file=system.file("/usrapp/css",  package = "usrApp")),
#     style="card_thumbnail.css",
#     all_files = F
#   )}
ui_card_thumbnail <- function(date="3/19", event="北大玩具節", imgUrl=NULL, dependency=NULL){
  tagList(tag_card_thumbnail(date, event, imgUrl), card_thumbnail_dependency(), dependency)
}
ui_show <- function() ui_card_thumbnail() |> apptest::create_testapp()
start_app <- function() {app_port <<- 7000
  apptest::start_appservice()
}
