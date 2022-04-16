document.addEventListener("DOMContentLoaded", function() {
  btnSignup=document.querySelector("body > div");
  btnSignup.addEventListener("mousedown", btnpress);
  btnSignup.addEventListener("mouseup", btnunpress);
});
function btnpress(){
    btnSignup.classList.add("pressed")
}
function btnunpress(){
    btnSignup.classList.remove("pressed");
}