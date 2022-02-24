fig <- Fig()
image_dependency <- function(){
  htmltools::htmlDependency(
    name="image",
    version="1",
    src=c(file=normalizePath("assets")),
    attachment = "img"
  )
}

fig$split_css$footer$remain$width <- NULL
fig$update_css()

fig$split_innerContent$`footer-home` <-
  tags$img(src="lib/image-1/img/icon-home.svg")
fig$split_innerContent$`footer-story`<-
  tags$img(src="lib/image-1/img/icon-story.svg")
fig$split_innerContent$`footer-event` <-
  tags$img(src="lib/image-1/img/icon-event.svg")
fig$split_innerContent$`footer-list` <-
  tags$img(src="lib/image-1/img/icon-list.svg")
fig$update_div()
fig$ui(image_dependency()) |> browseTag2()

fig$export("footer")
