htmltools::save_html(
  htmltools::tagList(ui_posterFront2(), econWeb:::dep_mobile()),
    file="docs/index.html", lang="zh_tw"
  )
htmltools::save_html(
  htmltools::tagList(tag, dep_mobile()), file=file.path("temp","temp.html")
)

poster(context = htmltools::includeHTML("event_introduction.txt")) |>
  econWeb::save_html2(file=file.path("docs", "event426.html"))

poster(context = htmltools::includeHTML("event_introduction.txt")) |> econWeb::browseTag2()
