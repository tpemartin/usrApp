library(htmltools)
library(econWeb)
source("R/ecard.R")

cardBackgroundIcons <- function(){
  tags$div(class = "card-background-icons",
    tags$div(class = "card-background-icons-1",
      tags$img(src="/lib/img-1/iconVoice.svg")),
    tags$div(class = "card-background-icons-2",
      tags$img(src="/lib/img-1/iconHeart.svg")))

}
tagList(
  cardBackgroundIcons(),
  ecard_dependency()
) |> browseTag2()
