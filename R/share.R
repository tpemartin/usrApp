#' Share button plugin
#'
#' @param dependency
#'
#' @return
#' @export
#'
#' @examples
plugin_share <- function(){
  tagList(tag_share(),
    jquery_dependency(), share_dependency(), img_dependency())
}
tag_share <-function(){
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
        tags$div(class = "share-shareSet-facebook-facebook"))),
    tags$div(class = "share-shareFrame",
      tags$div(class = "share-shareFrame-shareBtn",
        tags$div(class = "share-shareFrame-shareBtn-ellipse"),
        tags$div(class = "share-shareFrame-shareBtn-iconShare"))))
}

# plugin_share() |> econWeb::browseTag2()
