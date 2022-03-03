# based on frame
# https://www.figma.com/file/A2P3kG62HYjZrzwcwIJ9vS/R-prototype-source?node-id=63%3A69

card <- Fig()
card$export("assets/css/card")
card$split_css$`cardLarge-background`$remain$`background-color`="lightgray"
card$split_css$`cardLarge-background-image`$remain$background = NULL
card$split_css$`cardLarge-background-image`$remain$`background-size`="contain"
card$split_css$`cardLarge-background-image`$remain$`background-repeat`="no-repeat"
card$split_css$`cardLarge-content-category-icon`$remain$position ="relative"
card$split_css$cardLarge$remain$`max-width`="529px"
card$split_css$cardLarge$remain$width <-NULL
card$split_css$`cardLarge-content-category-icon`$remain$`mix-blend-mode`="normal"
card$update_css()
card$export("assets/css/card")
