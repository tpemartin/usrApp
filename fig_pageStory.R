fig <- Fig()
fig$export("assets/css/pageStory")
fig$split_css$`pageStory-navbar-logo`$remain$background <- "url(/lib/img-1/logo.png)"
fig$split_css$`pageStory-navbar-logo`$inside_autoLayout$margin <- NULL
fig$split_css$`pageStory-navbar-iconMore`$inside_autoLayout$margin <- NULL
fig$split_css$`pageStory-navbar-iconMore`$remain$background <- "url(/lib/img-1/iconMore.svg)"
fig$split_css$pageStory$remain$width <- "100%"
fig$split_css$pageStory$remain$height="100vh"
fig$update_css()
fig$export("assets/css/pageStory")
fig$ui() |> browseTag2()
