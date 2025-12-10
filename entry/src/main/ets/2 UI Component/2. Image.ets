@Entry
@Component
  /*
    Image组件 支持多种格式的图片： png, jpg, bmp, svg, gif.
  */
struct Index {
  build() {
    Column() {
      Image('https://res-static.hc-cdn.cn/cloudbu-site/china/zh-cn/hdhomeportal/logonew.png')
        .height(60)
      Image($r('app.media.startIcon'))  // resources/base/media/startIcon.png
        .height(60)
      Image($r('app.media.apache'))
        .height(60)
        .margin(10)
        .borderRadius(12)
      Image('https://res-static.hc-cdn.cn/cloudbu-site/china/zh-cn/%E8%B5%84%E8%AE%AF1PC.jpg')
        .height(150)
        .alt($r('app.media.apache'))    // 占位图（本地图）
      Row() {
        Text('华为官方下载的 SVG 图')
        Image($r('app.media.calendar'))
          .height(35)
          .fillColor(Color.Red)
      }
      .margin(10)
      Row() {
        Text('第三方下载的 SVG 图')
        Image($r('app.media.safety'))
          .height(35)
          .fillColor(Color.Green)
      }
    }
    .backgroundColor(Color.Pink)
    .width('100%')
    .height('100%')
  }
}