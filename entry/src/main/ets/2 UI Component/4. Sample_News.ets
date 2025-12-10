@Entry
@Component

struct Index {
  build() {
    Column(){
      Row({ space:10 }){
        Column(){
          Text('开启 HarmonyOS 应用开发之旅，为上架做好准备。')
            .fontSize(14)
          Row() {
            Text('华为开发者网站')
              .fontSize(14)
            Text('昨天')
              .fontSize(14)
            Image('')
          }
        }
        .padding(10)
        .width('70%')
        .height('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .alignItems(HorizontalAlign.Start)

        Image('https://developer.huawei.com/allianceCmsResource/resource/HUAWEI_Developer_VUE/images/0603public/kf-banner-pc.jpeg')
          .height(90)
          .width(100)
      }
      .width('100%')
      .height(100)
      .backgroundColor('#ffF')
      .margin(10)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ECEFEC')
  }
}