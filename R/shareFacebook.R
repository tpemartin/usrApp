facebook_dep <- function(){
  htmltools::htmlDependency(
    name="facebook",
    version="1.0.0",
    src=c(file=system.file("/usrapp/css",  package = "usrApp")),
    meta=list(
      "og:url"="https://www.your-domain.com/your-page.html",
      "og:title"="USR課程",
      "og:type"="website",
      "og:description"="Figma....",
      "og:image"=""
    )
  )
}
