tag_signup <-function(backgroundColor, pressed){
  if(pressed){.css=css(width="38px", height="38px", "background-color"="rgba(224, 224, 224, 0.42)")} else {
    .css=css(`background-color`=backgroundColor)
  }
  tags$div(class = "btnSignup", style=.css,
    tags$div(class = "btnSignup-img"))
}

btnSignup <- function(backgroundColor="black", pressed=F){
  tagList(tag_signup(backgroundColor, pressed),
    jquery_dependency(),
    app_dependency(),
    signup_dependency(), img_dependency())
}
# btnSignup() |> econWeb::browseTag2()

# add calendar ------------------------------------------------------------

tag_addCalendar <-function(backgroundColor, pressed){
  if(pressed){.css=css(width="38px", height="38px", "background-color"="rgba(224, 224, 224, 0.42)")} else {
    .css=css(`background-color`=backgroundColor)
  }
  tags$div(class = "btnCalendar", style=.css,
    tags$div(class = "btnCalendar-img"))
}
btn_addCalendar2 <- function(backgroundColor="black", pressed=F){
  tagList(tag_addCalendar(backgroundColor, pressed),
    jquery_dependency(),
    app_dependency(),
    addCalendar_dependency(),img_dependency())
}
# ui_addCalendar() |> econWeb::browseTag2()
