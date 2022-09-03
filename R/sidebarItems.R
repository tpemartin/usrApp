sidebarItemCircle = function(.label="首頁", imgUrl="lib/buttons-1.0.0/image/home.svg"){
  require(htmltools)
  div(
    class="sidebar-item",
    div(
      class="sidebar-item btn-circle",
      {div(
        class="mask-grouper",
        div(
          class="filter-color"
        ),
        div(
          class="mask-image",
          style=css(
            background=glue::glue("url({imgUrl}) center no-repeat")
          )
        )
      )}
    ),
    div(
      class="sidebar-item item-label",
      .label
    )
  ) -> .tag
  tagList(
    .tag,
    dep_buttons()
  )

}
dep_buttons = function(){
  htmltools::htmlDependency(
    name="buttons",
    version="1.0.0",
    src=c(file=
        system.file("app", package = "usrApp")),
    style=c("css/buttons.css"),
    all_files = T
  )
}
demo_button = function() sidebarItemCircle()
