$.ajax({
    url: "https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/usrsocntpu",
    dataType: "json",
    method: "GET",
    error: function(request){
        response=request},
    success: function(data){
        response=data}});
