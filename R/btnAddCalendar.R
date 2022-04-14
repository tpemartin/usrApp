btn_add2Calendar <- function(href = "https://calendar.google.com/event?action=TEMPLATE&tmeid=NWtqMzlqbThmODdpNzVtbzF1dWUxcXU4ZjlfMjAyMjA0MjZUMDYwMDAwWiBtdGxpbkBnbS5udHB1LmVkdS50dw&tmsrc=mtlin%40gm.ntpu.edu.tw"){
  require(htmltools)
  tags$a(target = "_blank",
      href=href,
      tag_btnAddCalendar()) -> tag_element

  tagList(tag_element,
    jquery_dependency(),
    btnAddCalendar_dependency(),
    img_dependency())
}
tag_btnAddCalendar <-function(){
  tags$div(class = "btnAddCalendar",
    tags$div(class = "btnAddCalendar-gcalendar"))
}


# btnAddCalendar() |> econWeb::browseTag2()
