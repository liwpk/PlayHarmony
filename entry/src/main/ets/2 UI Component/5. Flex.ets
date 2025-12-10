@Entry
@Component
struct Index {
  build() {
    Column(){

      Flex() {
        Text('弹性布局')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
        Text('宽度不够时')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
        Text('就会被挤小')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
        Text('宽不够100')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
      }
      .width('100%')
      .height(120)
      .backgroundColor(Color.Gray)
      .margin({bottom:30})

      Flex({wrap: FlexWrap.Wrap}) {
        Text('弹性布局')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
        Text('Wrap')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
        Text('可换行')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
        Text('宽不够就换行')
          .width(100)
          .height(50)
          .backgroundColor(Color.Pink)
      }
      .width('100%')
      .height(120)
      .backgroundColor(Color.Gray)
      .margin({bottom:30})

      Text('官方说 Flex 性能一般。能不用就不用。')
        .margin(30)

      Column() {
        Text('阶段选择')
          .fontSize(20)
          .fontWeight(600)

        Flex({wrap:FlexWrap.Wrap}) {
          Text('ArkUI')
            .backgroundColor('#15F7FF')
            .margin({right:10})
          Text('ArkTS')
            .backgroundColor('#15F7FF')
            .margin({right:10})
          Text('界面开发')
            .backgroundColor('#15F7FF')
            .margin({right:10})
          Text('系统能力')
            .backgroundColor('#15F7FF')
            .margin({right:10})
          Text('权限控制')
            .backgroundColor('#15F7FF')
            .margin({right:10})
          Text('元服务')
            .backgroundColor('#15F7FF')
            .margin({right:10})
        }
        .margin(5)
      }
      .alignItems(HorizontalAlign.Start)
      .margin(10)
      .padding(10)
      .shadow({
        radius: 8,
        color: Color.Gray,
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ECEFEC')
  }
}