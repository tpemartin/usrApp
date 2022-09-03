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
    header = bs4Dash::dashboardHeader(fixed=T,
      title = dashboardBrand2(
        title = "USR",
        color = "primary",
        href = "https://adminlte.io/themes/v3",
        image = "lib/buttons-1.0.0/image/logo.png"
      )
    ),
    sidebar = dashboardSidebar(
      sidebarItemCircle("首頁","lib/buttons-1.0.0/image/home.svg"),
      sidebarItemCircle("故事","lib/buttons-1.0.0/image/story.svg"),
      sidebarItemCircle("活動","lib/buttons-1.0.0/image/event.svg")
    ),
    body = dashboardBody(
      div(
        class="row",
          storyCardLarge(),
          storyCardSmall(),
        storyCardSmall(),
        storyCardSmall(),
        storyCardSmall(),
        storyCardSmall()),
      # ),
      div(
        style="display:none;",
        class="row", #style="padding-left: 16px;",
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail(),
        usrApp::ui_card_thumbnail()
      )
    ),
    controlbar = dashboardControlbar(),
    title = "DashboardPage"#,
   # footer = bs4DashFooter2(fixed=T)
  )
  tagList(
    jquery_dependency(),
    pageStory_dependency2(),
    .page
    # tags$body(.page,
    # usrApp:::pageFooter())
  )
}

#' Main page
#'
#' @return a shiny tag
#' @export
mainPage = function(){
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
    header = bs4Dash::dashboardHeader(fixed=T,
      title = dashboardBrand2(
        title = "USR",
        color = "primary",
        href = "https://adminlte.io/themes/v3",
        image = "lib/buttons-1.0.0/image/logo.png"
      )
    ),
    sidebar = dashboardSidebar(
      sidebarItemCircle("首頁","lib/buttons-1.0.0/image/home.svg"),
      sidebarItemCircle("故事","lib/buttons-1.0.0/image/story.svg"),
      sidebarItemCircle("活動","lib/buttons-1.0.0/image/event.svg")
    ),
    body = dashboardBody(
      div(id="app")
    ),
    controlbar = dashboardControlbar(),
    title = "DashboardPage"#,
    # footer = bs4DashFooter2(fixed=T)
  )
  tagList(
    jquery_dependency(),
    pageStory_dependency2(),
    .page
    # tags$body(.page,
    # usrApp:::pageFooter())
  )
}

#' Demo story page
#'
#' @return none
#' @export
demo_storyPage = function(){
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
    header = bs4Dash::dashboardHeader(fixed=T,
      title = dashboardBrand2(
        title = "USR",
        color = "primary",
        href = "https://adminlte.io/themes/v3",
        image = "lib/buttons-1.0.0/image/logo.png"
      )
    ),
    sidebar = dashboardSidebar(
      sidebarItemCircle("首頁","lib/buttons-1.0.0/image/home.svg"),
      sidebarItemCircle("故事","lib/buttons-1.0.0/image/story.svg"),
      sidebarItemCircle("活動","lib/buttons-1.0.0/image/event.svg")
    ),
    body = dashboardBody(
      div(
        class="row",
        storyCardLarge(),
        storyCardSmall(),
        storyCardSmall(),
        storyCardSmall(),
        storyCardSmall(),
        storyCardSmall())#,
      # ),

    ),
    controlbar = dashboardControlbar(),
    title = "DashboardPage"#,
    # footer = bs4DashFooter2(fixed=T)
  )
  tagList(
    jquery_dependency(),
    pageStory_dependency2(),
    .page
    # tags$body(.page,
    # usrApp:::pageFooter())
  )
}

demo = function() pageX() |> econWeb::browseTag2()
