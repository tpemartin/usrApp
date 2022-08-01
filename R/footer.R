bs4DashFooter2 = function(...){
  bs4Dash::bs4DashFooter(...) -> .ft
  .ft$children[[1]] |>
    htmltools::tagAppendChild(
      pageFooter()
    ) -> .ft$children[[1]]
  .ft
}
