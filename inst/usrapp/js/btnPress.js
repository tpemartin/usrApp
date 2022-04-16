document.addEventListener("DOMContentLoaded", function() {
  //btnSignup=document.querySelector("body > div");
  //btnSignup.addEventListener("mousedown", btnpress);
  //btnSignup.addEventListener("mouseup", btnunpress);

  btnSignupS=document.getElementsByClassName("btnSignup");
  for(let i=0; i < btnSignupS.length; i++){
    attachPressEventListener(btnSignupS[i]);
  };
});
function btnpress(){
    this.classList.add("pressed") //btnSignup
}
function btnunpress(){
    this.classList.remove("pressed");//btnSignup
}
function attachPressEventListener(btnSignup){
  btnSignup.addEventListener("mousedown", btnpress);
  btnSignup.addEventListener("mouseup", btnunpress);
}