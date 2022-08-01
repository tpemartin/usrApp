pageX = function(){
  require(bs4Dash)
  require(fresh)
  require(htmltools)
  require(usrApp)
  .page = dashboardPage(
    freshTheme = create_theme(
      bs4dash_vars(
        navbar_light_color = "#bec5cb",
        navbar_light_active_color = "#FFF",
        navbar_light_hover_color = "#FFF"
      ),
      bs4dash_yiq(
        contrasted_threshold = 10,
        text_dark = "#FFF",
        text_light = "#272c30"
      ),
      bs4dash_layout(
        main_bg = "#353c42"
      ),
      bs4dash_sidebar_light(
        bg = "#272c30",
        color = "#bec5cb",
        hover_color = "#FFF",
        submenu_bg = "#272c30",
        submenu_color = "#FFF",
        submenu_hover_color = "#FFF"
      ),
      bs4dash_status(
        primary = "#5E81AC", danger = "#BF616A", light = "#272c30"
      ),
      bs4dash_color(
        gray_900 = "#FFF", white = "#272c30"
      )
    ),
    options = NULL,
    header = dashboardHeader(
      title = dashboardBrand(
        title = "My dashboard",
        color = "primary",
        href = "https://adminlte.io/themes/v3",
        image = "https://adminlte.io/themes/v3/dist/img/AdminLTELogo.png"
      )
    ),
    sidebar = dashboardSidebar(),
    body = dashboardBody(
      div(class="col-sm-12",
        card(
          categoryname="臺北大學城",
          title="【USR】社科院USR專書出版-「大學責任與高齡學習」",
          imgUrl ="https://miro.medium.com/max/1400/1*2v4yO6cR2XOSlI65Ge6GrA.jpeg"
        )),
      div(
        class="row", #style="padding-left: 16px;",
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail()
      ),
      box(status = "danger"),
      box(status = "primary"),
      box(status = "orange")
    ),
    controlbar = dashboardControlbar(),
    title = "DashboardPage",
    footer = bs4DashFooter2(fixed=T)
  )
  tagList(
    jquery_dependency(),
    pageStory_dependency(),
    .page
    # tags$body(.page,
    # usrApp:::pageFooter())
  )
}

demo = function() pageX() |> econWeb::browseTag2()
