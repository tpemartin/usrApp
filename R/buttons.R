tag_signup <-function(signup_link, backgroundColor, pressed){
  if(pressed){.css=css(width="38px", height="38px", "background-color"="rgba(224, 224, 224, 0.42)")} else {
    .css=css(`background-color`=backgroundColor)
  }
  tags$div(class = "btnSignup", style=.css,
    tags$a(
      href=signup_link,
      target="_blank",
    tags$div(class = "btnSignup-img")))
}

btnSignup <- function(signup_link="https://docs.google.com/forms/d/e/1FAIpQLSetFB_20_BARXgzST1DoxorGpGXb_3u9wPe6L3gHsYthaSJKg/viewform",backgroundColor="black", pressed=F){
  tagList(
      tag_signup(signup_link, backgroundColor, pressed
    ),
    jquery_dependency(),
    app_dependency(),
    signup_dependency(), img_dependency())
}
# btnSignup() |> econWeb::browseTag2()

# add calendar ------------------------------------------------------------

tag_addCalendar <-function(calendar_link, backgroundColor, pressed){
  if(pressed){.css=css(width="38px", height="38px", "background-color"="rgba(224, 224, 224, 0.42)")} else {
    .css=css(`background-color`=backgroundColor)
  }
  tags$div(class = "btnCalendar", style=.css,
    tags$a(href=calendar_link, target="_blank",
      tags$div(class = "btnCalendar-img")
      )
    )
}
btn_addCalendar2 <- function(calendar_link= "https://calendar.google.com/event?action=TEMPLATE&tmeid=NWtqMzlqbThmODdpNzVtbzF1dWUxcXU4ZjlfMjAyMjA0MjZUMDYwMDAwWiBtdGxpbkBnbS5udHB1LmVkdS50dw&tmsrc=mtlin%40gm.ntpu.edu.tw", backgroundColor="black", pressed=F){
  tagList(
      tag_addCalendar(calendar_link, backgroundColor, pressed),
    jquery_dependency(),
    app_dependency(),
    addCalendar_dependency(),img_dependency())
}
# ui_addCalendar() |> econWeb::browseTag2()
