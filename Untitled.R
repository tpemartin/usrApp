# background card
cardBackground <- econWeb::Fig()

cardBackground$ui() |> browseTag2()
cardBackground$split_css$`cardLarge-background-image`$remain$background <- "white"
cardBackground$split_css$`cardLarge-background-image`$remain$`mix-blend-mode`="soft-light"
cardBackground$split_css$`cardLarge-background`$remain$`background-image` = "url(https://miro.medium.com/max/1400/1*2v4yO6cR2XOSlI65Ge6GrA.jpeg)"
cardBackground$split_css$`cardLarge-background`$remain$`background-size`="cover"
cardBackground$update_css()
cardBackground$ui() |> browseTag2()
cardBackground$export("cardBackground")

###

cardCategory <- Fig()
cardCategory$ui() |> browseTag2()
cardCategory$split_css$`cardLarge-content-category-icon-iconCollege`$remain$background<- "url(lib/img-1/iconCollege.png)"
cardCategory$split_css$`cardLarge-content-category-icon`$remain$position="relative"
cardCategory$update_css()
cardCategory$export("cardCategory")

###
cardCatContainer <- Fig()
cardCatContainer$ui() |> browseTag2()
cardCatContainer$export("cardCatContainer")

###
cardContent <- Fig()
cardContent$ui() |> browseTag2()
cardContent$export("cardContent")

###
cardLarge <- Fig()
cardLarge$export("cardLage")
