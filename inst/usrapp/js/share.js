$(function(){
  el_shares=document.querySelector("body > div > div.share-shareSet");
  $shares=$(el_shares);
  el_shareBtn=document.querySelector("body > div > div.share-shareFrame > div > div.share-shareFrame-shareBtn-iconShare");
  $shareBtn=$(el_shareBtn);
  $shareBtn.click(toggle_shares);
});
toggle_shares=function(){
  $shares.slideToggle();
};