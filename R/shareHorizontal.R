figImport_shareHorizontal = function(){
  fig <- econWeb::Fig()
  fig$export("inst/usrapp/css/shareHorizontal")
}
shareLine <- function(shareLink){
  tagList(
    tags$a(href = glue::glue("https://social-plugins.line.me/lineit/share?url={shareLink}"),
      tags$div(class = "shareHorizontal-line",
        tags$img(
          src="lib/usrApp-1.0.0/img/LINE.svg"
        ))
    ),
    tags$script(
      src="https://d.line-scdn.net/r/web/social-plugin/js/thirdparty/loader.min.js", async="async", defer="defer"
    )
  )
}
tag_shareHorizontal <-function(shareLink){
  tags$div(class = "shareHorizontal",
    shareLine(shareLink),
    shareFacebook(shareLink))
}
shareFacebook <- function(shareLink){
  tagList(
    tags$div(id="fb-root"),
    tags$script(async=NA, defer=NA, crossorigin="anonymous", src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v13.0&appId=760193701021578&autoLogAppEvents=1", nonce="QKToSVyi"),
    tags$a(href = glue::glue("https://www.facebook.com/sharer/sharer.php?u={shareLink}%2F&amp;src=sdkpreparse"),
      target="_blank",
      tags$div(class = "shareHorizontal-facebook fb-share-button",
      tags$img(
        src="lib/usrApp-1.0.0/img/facebook.svg"
      )))
  )

}
# shareHorizontal_dependency <- function(){
#   htmltools::htmlDependency(
#     name="usrApp",
#     version="1.0.0",
#     src=c(file=system.file("/usrapp/css", package = "usrApp")),
#     style="shareHorizontal.css",
#     all_files = F
#   )}
ui_shareHorizontal <- function(shareLink="https://tpemartin.github.io/usr.activities"){
  tagList(tag_shareHorizontal(shareLink), shareHorizontal_dependency())
}
# ui_shareHorizontal() |> econWeb::browseTag2()
