# https://www.figma.com/file/A2P3kG62HYjZrzwcwIJ9vS/R-prototype-source?node-id=2%3A39

# pageStoryClipboard <- clipr::read_clip()
# pageStoryClipboard |>
#   saveRDS("data/pageStoryClipboard.Rds")
readRDS("data/pageStoryClipboard.Rds") |>
  clipr::write_clip()

fig <- Fig()
fig$export("assets/css/pageStory")
fig$split_css$`pageStory-navbar-logo`$remain$background <- "url(/lib/img-1/logo.png)"
fig$split_css$`pageStory-navbar-logo`$inside_autoLayout$margin <- NULL
fig$split_css$`pageStory-navbar-iconMore`$inside_autoLayout$margin <- NULL
fig$split_css$`pageStory-navbar-iconMore`$remain$background <- "url(/lib/img-1/iconMore.svg)"
fig$split_css$pageStory$remain$width <- "100%"
fig$split_css$pageStory$remain$height="100vh"
fig$split_css$`pageStory-footer-home`$remain$background = "no-repeat url(/lib/img-1/iconHome.svg)"
fig$split_css$`pageStory-footer-event`$remain$background="no-repeat url(/lib/img-1/iconEvent.svg)"
fig$split_css$`pageStory-footer-list`$remain$background="no-repeat url(/lib/img-1/iconList.svg)"
fig$split_css$`pageStory-footer-story`$remain$background="no-repeat url(/lib/img-1/iconStory.svg)"
fig$split_css$`pageStory-footer`$auto_layout$`justify-content`="space-around"
fig$update_css()
fig$export("assets/css/pageStory")
fig$ui() |> browseTag2()
