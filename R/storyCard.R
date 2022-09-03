storyCardHome = function(
  title="USR與鳶山協會為在地老人據點介紹長照資源",
  imgSrc="lib/usrApp-1.0.0/img/storyimage.jpeg"){
  require(htmltools)
  tagList(
    tags$style('
    .card-img-overlay {
    /* overlay */


position: absolute;
/* height: 204px; */
left: 0px;
right: 0px;
top: 0px;

background: rgba(242, 205, 76, 0.25);
mix-blend-mode: multiply;

    }
    .card-body {
    max-height: 159px;
    overflow: hidden;
    }
'),
    tags$div(class = "card",
      tags$div(class="card-img-overlay"),
      tags$img(src = imgSrc,
        class = "card-img-top",
        alt = "..."),
      tags$div(class = "card-body",
        style="z-index:0;",
        tags$h5(class = "card-title",
          title)))
  ) -> tag_element

  tag_element #|> econWeb::browseTag2()
}
storyCardLarge = function(
    title="USR與鳶山協會為在地老人據點介紹長照資源",
  content="社科院USR計畫為推動大學在地社會責任，透過育成台灣鳶山社會實踐協會，扮演新北市社會局與在地老人據點的窗口，今年約有50個在地老人據點加入培力計畫，涵蓋了三峽、鶯歌、土城、及樹林等共四個行政區。為落實社區照顧關懷據點之服務，於111年3月25日下午2至4點，辦理今年度第一場線上志工培力工作坊，持續針對據點服務項目(如關懷訪視、電話問安、餐飲服務、健康促進活動及社會參與)導入資源，並將資源運用、友善互動與專業知能等高齡相關之專業課程，推廣至在地老人據點。",
  imgSrc="lib/usrApp-1.0.0/img/storyimage.jpeg"){
  require(htmltools)
  tagList(
    tags$style(HTML('
    .card {
    border-style: solid;
    border-width: thin;
    border-color: #a5a5a5;
    }
    .card-img-overlay {
    /* overlay */


position: absolute;
/* height: 204px; */
left: 0px;
right: 0px;
top: 0px;

background: rgba(242, 205, 76, 0.25);
mix-blend-mode: multiply;

    }
    .card-body {
    max-height: 159px;
    overflow: hidden;
    }
    .card-text {
    font-family: \'Noto Serif TC\';
    }

')),
    tags$div(class = "card mb-3",
      # style = "max-width: 540px;",
      tags$div(class = "row no-gutters",
        tags$div(class = "col-md-6",
          tags$img(src = imgSrc,
            style="width:100%",
            alt = "...")),
        tags$div(class = "col-md-6",
          tags$div(class = "card-body",
            tags$h5(class = "card-title",
              title),
          tags$p(class="card-text",content))))
        )) -> tag_element

  tag_element #|> econWeb::browseTag2()
}


storyCardSmall = function(
    title="楊麗蘭理事長談「在宅沐浴服務」",
    imgSrc="lib/usrApp-1.0.0/img/storyimage.jpeg"){
  require(htmltools)
  tagList(
    dep_story(),
    tags$style('

'),
    tags$div(class = "card mb-3 col-md-6",
      # style = "max-width: 540px;",
      tags$div(class = "row no-gutters",
        tags$div(class = "col-6",
          tags$img(src = imgSrc,
            style="width:100%",
            alt = "...")),
        tags$div(class = "col-6",
          tags$div(class = "card-body",
            tags$h5(class = "card-title",
              title)))))
  ) -> tag_element

  tag_element #|> econWeb::browseTag2()
}


# helpers -----------------------------------------------------------------


storyCardSmall2 = function(
    title="USR與鳶山協會為在地老人據點介紹長照資源",
  imgSrc="lib/usrApp-1.0.0/img/storyimage.jpeg"){
  require(htmltools)
  tagList(
    tags$style(
    HTML('
    .card.small {
      flex-direction: row;
    }
    .card.small > img {
      width: 80%;
    }
    .card-img-overlay {
    /* overlay */


position: absolute;
/* height: 204px; */
left: 0px;
right: 0px;
top: 0px;

background: rgba(242, 205, 76, 0.25);
mix-blend-mode: multiply;

    }
    .card-body {
    max-height: 159px;
    overflow: hidden;
    }
')),
    tags$div(class = "card small",
      tags$div(class="card-img-overlay"),
      tags$img(src = imgSrc,
        class = "card-img-top",
        alt = "..."),
      tags$div(class = "card-body",
        style="z-index:0;",
        tags$h5(class = "card-title",
          title)))
  ) -> tag_element

  tag_element #|> econWeb::browseTag2()
}
dep_story = function(){
  htmltools::htmlDependency(
    name="story",
    version="1.0.0",
    src=c(file=
        system.file(
          "app", package = "usrApp"
        )),
    style=c("css/story.css")
  )
}
