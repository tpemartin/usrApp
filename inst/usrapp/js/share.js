$(function(){
  el_shares=document.querySelector("div.share-shareSet");
  $shares=$(el_shares);
  el_shareBtn=document.querySelector("div.share-shareFrame-shareBtn-iconShare");
  $shareBtn=$(el_shareBtn);
  $shareBtn.click(toggle_shares);
});
toggle_shares=function(){
  $shares.slideToggle();
};
