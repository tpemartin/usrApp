tag_posterFront <-function(title, imgSrc){
  tags$div(class = "posterFront",
    tags$div(class = "posterFront-container",
      tags$div(class = "posterFront-container-image",
        style=css(`background-image`=glue::glue("url({imgSrc})"))),
      tags$div(class = "posterFront-container-btnFixer",
        btn_add2Calendar(),
        plugin_share())),
    tags$div(class = "posterFront-titleDetail",
      tags$div(class = "posterFront-titleDetail-title", title),
      tags$div(class = "posterFront-titleDetail-detail")))
}

ui_posterFront <- function(title="USR公民培訓課程：UI設計神器Figma",imgSrc="/lib/usrAppImg-1.0.0/figmaposter-sm.jpg", dependency=NULL){
  tagList(tag_posterFront(title, imgSrc),
    jquery_dependency(),
    posterFront_dependency(), img_dependency())
}
tag_posterBack <-function(title, context){
  tags$div(class = "posterFront",
    tags$div(class = "posterFront-container",
      tags$div(class = "posterBack-container-context",
      tags$div(class="posterContext",
        context)),
      tags$div(class = "posterFront-container-btnFixer",
        btn_add2Calendar(),
        plugin_share())),
    tags$div(class = "posterFront-titleDetail",
      tags$div(class = "posterFront-titleDetail-title", title),
      tags$div(class = "posterBack-titleDetail-return")))
}
ui_posterBack <- function(title="USR公民培訓課程：UI設計神器Figma", context){
  tagList(tag_posterBack(title, context),
    jquery_dependency(),
    posterFront_dependency(), img_dependency())
}
# ui_posterBack(
#   context="Figma是線上介面設計工具，允許和團隊進行多人協同合作，在瀏覽器中進行設計，共同繪製使用者介面，UI、UX、網頁、App應用程式的介面原型，只要有一個成員變更內容，其他使用者都能同步查看變更和加入編輯，讓團隊可以共同討論，創作出最有共識的產品。
# Figma是線上介面設計工具，允許和團隊進行多人協同合作，在瀏覽器中進行設計，共同繪製使用者介面，UI、UX、網頁、App應用程式的介面原型，只要有一個成員變更內容，其他使用者都能同步查看變更和加入編輯，讓團隊可以共同討論，創作出最有共識的產品。Figma是線上介面設計工具，允許和團隊進行多人協同合作，在瀏覽器中進行設計，共同繪製使用者介面，UI、UX、網頁、App應用程式的介面原型，只要有一個成員變更內容，其他使用者都能同步查看變更和加入編輯，讓團隊可以共同討論，創作出最有共識的產品。"
# ) |> econWeb::browseTag2()
# ui_posterFront() |> econWeb::browseTag2()
