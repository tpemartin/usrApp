tag_pageStory <-function(){
  tags$div(class = "pageStory",
    pageNavbar(),
    tags$div(class = "pageStory-stories",
      tags$div(class = "pageStory-stories-cards"),
      tags$div(class = "pageStory-stories-sidenave")),
    pageFooter()
    )
}

# helpers -----------------------------------------------------------------
pageFooter <- function(){
  tags$div(class = "pageStory-footer",
    tags$div(class = "pageStory-footer-home"),
    tags$div(class = "pageStory-footer-story"),
    tags$div(class = "pageStory-footer-event"),
    tags$div(class = "pageStory-footer-list"))
}
pageNavbar <- function(){
  tags$div(class = "pageStory-navbar",
    tags$div(class = "pageStory-navbar-logo"),
    tags$div(class = "pageStory-navbar-iconMore"))
}
pageStory_dependency <- function(){
  htmltools::tagList(
    htmltools::htmlDependency(
    name="pageStory",
    version="1.0.0",
    src=c(file=
        normalizePath("./assets/css")),
    style="css/pageStory.css",
    all_files = F
    ),
    htmltools::htmlDependency(
      name="img",
      version="1",
      src=c(file=
          normalizePath("./assets/img")),
      attachment="",
      all_files=T
    )
  )}
pageStory_dependency2 <- function(){
  htmltools::tagList(
    htmltools::htmlDependency(
      name="pageStory",
      version="1.0.0",
      src=c(file=
          system.file("app",package="usrApp")),
      #normalizePath("./assets/css")),
      style="css/pageStory.css",
      all_files = T
    ),
    #http://127.0.0.1:4013/lib/usrApp-1.0.0/img/storyimage.jpeg
    htmltools::htmlDependency(
      name="usrApp",
      version="1.0.0",
      src=c(file=
          system.file("usrapp",package="usrApp")),
      #normalizePath("./assets/css")),
      style="",
      all_files = T
    )
    #,
    # htmltools::htmlDependency(
    #   name="img",
    #   version="1",
    #   src=c(file=
    #       system.file("app",package="usrApp")),
    #       # normalizePath("./assets/img")),
    #   attachment="",
    #   all_files=T
    # )
  )}

ui_pageStory <- function(dependency=NULL){
  tagList(tag_pageStory(), pageStory_dependency(), dependency)
}
# ui_pageStory() |> browseTag2()
