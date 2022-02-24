fig <- Fig()
fig$split_innerContent$`navbar-more` <-
  tags$img(src="lib/assets")
image_dependency <- function(){
  htmltools::htmlDependency(
    name="image",
    version="1",
    src=c(file=normalizePath("assets")),
    attachment = "img"
  )
}

fig$split_css$`navbar-more`$inside_autoLayout$margin <- NULL
fig$split_css$`navbar-logo`$inside_autoLayout$margin <- NULL
fig$update_css()

fig$split_innerContent$`navbar-more` <-
  tags$img(src="lib/image-1/img/icon-more.svg")
fig$split_innerContent$`navbar-logo` <-
  tags$img(src="lib/image-1/img/logo-usr.svg")
fig$update_div()
fig$ui(image_dependency) |> browseTag2()
fig$export(tagname="navbar")
