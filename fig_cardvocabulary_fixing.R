library(htmltools)
library(econWeb)
source("R/ecard.R")


tagList(
  cardBackgroundIcons(),
  ecard_dependency()
) |> browseTag2()
