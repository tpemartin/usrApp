# signup ------------------------------------------------------------------
fig = econWeb::Fig()
fig$split_css$`btnSignup-img`$remain$background="url(/lib/usrAppImg-1.0.0/btnSignup-img.svg) no-repeat center;"
fig$update_css()
fig$export("inst/usrapp/css/components/signup")


# add calendar ------------------------------------------------------------

fig=econWeb::Fig()
fig$export("inst/usrapp/css/components/addCalendar")

# posterFront
fig=econWeb::Fig()
fig$export("inst/usrapp/css/components/posterFront2")
