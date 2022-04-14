btn_add2Calendar <- function(href = "https://calendar.google.com/event?action=TEMPLATE&tmeid=NWtqMzlqbThmODdpNzVtbzF1dWUxcXU4ZjlfMjAyMjA0MjZUMDYwMDAwWiBtdGxpbkBnbS5udHB1LmVkdS50dw&tmsrc=mtlin%40gm.ntpu.edu.tw"){
  require(htmltools)
  tags$a(target = "_blank",
      href=href,
      tag_btnAddCalendar()) -> tag_element

  tagList(tag_element, btnAddCalendar_dependency(),
    img_dependency())
}
tag_btnAddCalendar <-function(){
  tags$div(class = "btnAddCalendar",
    tags$div(class = "btnAddCalendar-gcalendar"))
}
btnAddCalendar_dependency <- function(){
  htmltools::htmlDependency(
    name="usrApp",
    version="1.0.0",
    src=c(file=system.file("/usrapp/css",  package = "usrApp")),
    style="btnAddCalendar.css",
    all_files = F
  )}

# btnAddCalendar() |> econWeb::browseTag2()
