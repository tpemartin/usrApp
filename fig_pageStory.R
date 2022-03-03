fig <- Fig()
fig$export("assets/css/pageStory")
fig$split_css$`pageStory-navbar-logo`$remain$background <- "url(lib/img-1/logo.png)"

fig$update_css()
fig$export("assets/css/pageStory")
fig$ui() |> browseTag2()
