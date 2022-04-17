tag_posterFront2 <-function(title, imgSrc, context){
  tags$div(class = "posterFront",
    tags$div(class = "posterFront-container", id="front",
      tags$div(class = "posterFront-container-image",
        style=css(`background-image`=glue::glue("url({imgSrc})")))),
    tags$div(class = "posterBack-container", id="back",
      style="display:none;",
      tags$div(class = "posterBack-container-text",
        tags$div(class="posterContext", context))),
    tags$div(class = "posterFront-fixbar",
      btn_addCalendar2(),
      btnSignup(),
      plugin_share()),
    tags$div(class = "posterFront-titleDetail",
      tags$div(class = "posterFront-titleDetail-title", title),
      tags$div(id="detail-return",
        tags$div(class = "posterFront-titleDetail-detail"),
        tags$div(class="posterBack-titleDetail-return", style="display:none;"))))
}

ui_posterFront2 <- function(title="USR公民培訓課程：UI設計神器Figma",imgSrc="lib/usrApp-1.0.0/img/figmaposter-sm.jpg",context="test"){
  tagList(
    tags$div(id="fb-root"),
    tags$script("(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = \"https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0\";
      fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));"),
    tag_posterFront2(title,imgSrc, context),
    facebook_dep(),
    jquery_dependency(),posterFront2_dependency(), img_dependency())
}
# ui_posterFront2() |> econWeb::browseTag2()
# tag_posterBack2 <-function(title, context){
#   tags$div(class = "posterFront",
#     tags$div(class = "posterBack-container", style="display:none;",
#       tags$div(class = "posterBack-container-text",
#         tags$div(class="posterContext", context))),
#     # tags$div(id="app"),
#     # backContent(context),
#     tags$div(class = "posterFront-fixbar",
#       btn_addCalendar2(),
#       btnSignup(),
#       plugin_share()),
#     tags$div(class = "posterFront-titleDetail",
#       tags$div(class = "posterFront-titleDetail-title", title),
#       tags$div(class = "posterBack-titleDetail-return")))
# }
# backContent <- function(context){
#   require(reactR)
#   tags$script(
#     babel_transform(
#       glue::glue('ReactDOM.render(<div class="posterBack-container">
#     <div class="posterBack-container-text">
#       <div class="posterContext">{context}</div>
#     </div>
#   </div>, document.getElementById("app"))'
#     ))
#   )
# }
# ui_posterBack2 <- function(title="USR公民培訓課程：UI設計神器Figma",context="test",dependency=NULL){
#   require(reactR)
#   tagList(tag_posterBack2(title,context),
#     jquery_dependency(),
#     html_dependency_corejs(),
#     html_dependency_react(),
#     posterFront2_dependency(), img_dependency())
# }
#
# posterFront2 <- function(title="USR公民培訓課程：UI設計神器Figma",imgSrc="/lib/usrAppImg-1.0.0/figmaposter-sm.jpg",context="test"){
#   tagList(tag_posterFront2(title,imgSrc),
#     jquery_dependency(),posterFront2_dependency(), img_dependency())
# }
# ui_posterBack2(context="Figma是線上介面設計工具，允許和團隊進行多人協同合作，在瀏覽器中進行設計，共同繪製使用者介面，UI、UX、網頁、App應用程式的介面原型，只要有一個成員變更內容，其他使用者都能同步查看變更和加入編輯，讓團隊可以共同討論，創作出最有共識的產品。Figma是線上介面設計工具，允許和團隊進行多人協同合作，在瀏覽器中進行設計，共同繪製使用者介面，UI、UX、網頁、App應用程式的介面原型，只要有一個成員變更內容，其他使用者都能同步查看變更和加入編輯，讓團隊可以共同討論，創作出最有共識的產品。Figma是線上介面設計工具，允許和團隊進行多人協同合作，在瀏覽器中進行設計，共同繪製使用者介面，UI、UX、網頁、App應用程式的介面原型，只要有一個成員變更內容，其他使用者都能同步查看變更和加入編輯，讓團隊可以共同討論，創作出最有共識的產品。") |> econWeb::browseTag2()
