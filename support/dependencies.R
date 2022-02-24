image_dependency <- function(){
  htmltools::htmlDependency(
    name="image",
    version="1",
    src=c(file=normalizePath("assets")),
    attachment = "img"
  )
}
