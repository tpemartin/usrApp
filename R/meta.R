meta_dep <- function(){
  htmltools::htmlDependency(
    name="usrapp-meta",
    version="1.0.0",
    src=c(file=system.file("/usrapp/css",  package = "usrApp")),
    meta=list(
      "og:url"="https://tpemartin.github.io/usr.activities/",
      "og:title"="USR課程",
      "og:type"="website",
      "og:description"="Figma是網頁及App開發者最常用的UIUX設計工具，這次經濟系林茂廷老師將以2堂課各2小時帶領學生進入Figma的殿堂，同時也分享幾個正在進行的Web app界面設計，有興趣的同學可以點下方報名鍵報名。點下方行事曆鍵也可以把活動提醒加到你的Google行事曆喔。
",
      "og:image"="https://tpemartin.github.io/usrApp/lib/usrApp-1.0.0/img/figmaposter-sm.jpg"
    ),
    head = "<title>USR課程:Figma</title>"
  )
}
