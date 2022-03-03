fig <- Fig()

fig$split_css$`card-content-teacher-word`$inside_autoLayout$flex <- NULL
fig$split_css$`card-content-teacher-img`$remain$background = "url(/lib/img-1/teacher.png)"
fig$split_css$`card-background-icons`$auto_layout$padding = "16px"
fig$update_css()
fig$export("assets/css/ecard")
