extract_stories_from_rss <- function() {
  xml2::read_xml("https://medium.com/feed/usrsocntpu") -> rss
  rss |>
    xml2::xml_children() |>
    xml2::xml_find_all("item") -> items

  items |>
    purrr::map(
      ~{
        list(
          title=get_title(.x),
          category=get_category(.x),
          image=get_img_src(.x)
        )
      }
    )
}

get_category <- function(x) {
  x |>
    xml2::xml_find_first("category") |>
    xml2::xml_text()
}
get_title <- function(x) {
  xml2::xml_find_first(x, "title") |>
    xml2::xml_text()
}
get_img_src <- function(x) {
  x |>
    xml2::xml_find_first(
      xpath = "content:encoded"
    ) |>
    xml2::xml_text() -> content

  xml2::read_html(content) -> htmlcontent
  htmlcontent |>
    xml2::xml_child() |>
    xml2::xml_find_first("figure/img") |>
    xml2::xml_attr("src") -> src
  src
}
