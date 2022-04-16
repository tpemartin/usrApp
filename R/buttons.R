tag_signup <-function(backgroundColor, pressed){
  if(pressed){.css=css(width="38px", height="38px", "background-color"="rgba(224, 224, 224, 0.42)")} else {
    .css=css(`background-color`=backgroundColor)
  }
  tags$div(class = "btnSignup", style=.css,
    tags$div(class = "btnSignup-img"))
}
signup_dependency <- function(){
  htmltools::htmlDependency(
    name="usrApp",
    version="1.0.0",
    src=c(file=system.file("/usrapp/css/components", package = "usrApp")),
    style="signup.css",
    all_files = F
  )}
btnSignup <- function(backgroundColor="black", pressed=F){
  tagList(tag_signup(backgroundColor, pressed),
    jquery_dependency(),
    app_dependency(),
    signup_dependency(), img_dependency())
}
# btnSignup() |> econWeb::browseTag2()
