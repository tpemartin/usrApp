# cardL <- Fig()

cardL$split_css$`cardLarge-background-image`$remain$"background-image" <-
  "url(https://miro.medium.com/max/1400/1*6MQjyiqWB9Tvk28m5XxSmQ.jpeg)"
cardL$split_css$`cardLarge-background-image`$remain$`background-repeat` <- "no-repeat";
cardL$split_css$`cardLarge-background-image`$remain$background <- NULL
cardL$split_css$`cardLarge-background-image`$remain$`background-size` <- "cover"

cardL$split_css$`cardLarge-content-category-icon`$remain$position <- "relative"


cardL$update_css()

cardL$split_css$`cardLarge-background-image`$remain$bottom <- "0%"

cardL$split_innerContent$`cardLarge-content-category-name` ="臺北大學城"
cardL$split_innerContent$`cardLarge-content-title`="【USR】社科院USR專書出版-「大學責任與高齡學習」"
cardL$split_innerContent$`cardLarge-content-category-icon` <-
  tags$img(
    class="icon-college",
    src="lib/image-1/img/icon-college.png")

cardL$update_div()
cardL$ui(
  image_dependency()
) |> browseTag2()

cardL$export("cardLarge")
