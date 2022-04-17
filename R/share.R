#' Share button plugin
#'
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples
plugin_share <- function(backgroundColor="black", pressed=F){
  tagList(tag_share(backgroundColor, pressed),
    jquery_dependency(), share_dependency(), img_dependency())
}
tag_share <-function(backgroundColor, pressed){
  if(pressed){.css=css(width="38px", height="38px", "background-color"="rgba(224, 224, 224, 0.42)")} else {
    .css=css(`background-color`=backgroundColor)
  }
  tags$div(class = "share",
    tags$div(class = "share-shareSet",
      style="display:none;",
      tags$div(class = "share-shareSet-email",
        tags$div(class = "share-shareSet-email-email")),
      tags$div(class = "share-shareSet-line",
        tags$div(class = "share-shareSet-line-LINE",
          "LINE")),
      tags$div(class = "share-shareSet-instagram",
        tags$div(class = "share-shareSet-instagram-instagram")),
      tags$div(class = "share-shareSet-facebook",
        tags$div(class = "share-shareSet-facebook-facebook fb-share-button", `data-href`="https://www.your-domain.com/your-page.html"))),
    tags$div(class = "share-shareFrame",
      tags$div(class = "share-shareFrame-shareBtn",style=.css,
        tags$div(class = "share-shareFrame-shareBtn-img",
          # style=css("background-image"="url(/lib/usrAppImg-1.0.0/iconShare.svg)")
          ))))
}

# plugin_share() |> econWeb::browseTag2()
