fig <- econWeb::Fig()
fig$split_css$`share-shareSet-email-email`$remain$height="28px"
fig$split_css$`share-shareSet-email-email`$remain$background="url(/lib/usrAppImg-1.0.0/email.svg)"
fig$split_css$`share-shareSet-line-LINE`$color="white"
fig$split_innerContent$`share-shareSet-line-LINE`="LINE"
fig$split_css$`share-shareSet-instagram-instagram`$remain$height="39px"
fig$split_css$`share-shareSet-instagram-instagram`$remain$background="center no-repeat url(/lib/usrAppImg-1.0.0/instagram.svg)"
fig$split_css$`share-shareSet-instagram-instagram`$remain$position <- NULL
fig$split_css$`share-shareSet-instagram-instagram`$remain$width <- NULL
fig$split_css$`share-shareSet-facebook-facebook`$remain$height="39px"
fig$split_css$`share-shareSet-facebook-facebook`$remain$background="center no-repeat url(/lib/usrAppImg-1.0.0/facebook.svg)"
fig$split_css$`share-shareSet-facebook-facebook`$remain$position <- NULL
fig$split_css$`share-shareSet-facebook-facebook`$remain$width <- NULL

fig$split_css$`share-shareFrame-shareBtn-iconShare`$remain$background="center no-repeat url(/lib/usrAppImg-1.0.0/icon-share.svg)"
fig$split_css$`share-shareFrame-shareBtn-iconShare`$remain$height="39px"
fig$split_css$`share-shareFrame-shareBtn-iconShare`$remain$position <- NULL
fig$update_css()
fig$update_div()
fig$export("inst/css/share")
