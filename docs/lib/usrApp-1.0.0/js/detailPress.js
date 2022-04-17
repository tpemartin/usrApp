$(function(){
    $front =$("#front");
    $back=$("#back");
    $detailReturn=$("#detail-return");
    $iconDetail=$($(".posterFront-titleDetail-detail")[0]);
    $iconReturn=$($(".posterBack-titleDetail-return")[0]);
    $detailReturn.click(toggleInfo);
});
function toggleInfo(){
    $front.toggle();
    $back.toggle();
    $iconDetail.toggle();
    $iconReturn.toggle();
}