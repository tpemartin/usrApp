library(htmltools)
library(econWeb)
source("R/ecard.R")

cardContentTeacher <- function(){
  tags$div(class = "card-content-teacher",
    tags$div(class = "card-content-teacher-img"),
    tags$div(class = "card-content-teacher-word",
      "前往VoiceTube 聽 Leila 老師如何應用單字"))
}
tagList(
  cardContentTeacher(),
  ecard_dependency()
) |> browseTag2()
