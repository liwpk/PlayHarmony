@Entry
@Component

struct Index {
  build() {
    Column(){
      Text('绝对定位')
      Column(){
        Text('移动后，不占位')
          .width(100)
          .height(100)
          .backgroundColor(Color.Green)
          .position({
            x: 30,
            y: 70
          })

        Text('position: \n参照父组件\n移动位置')
          .width(100)
          .height(100)
          .backgroundColor(Color.Orange)

        Text('position:\n x=50%\n y=50%')
          .width(100)
          .height(100)
          .backgroundColor(Color.Brown)
          .position({
            x: '50%',
            y: '50%'
          })
      }
      .backgroundColor(Color.Pink)
      .height(300)
      .width(300)
      .margin({bottom: 20})

      Text('相对定位')
      Column(){
        Text('1')
          .width(100)
          .height(100)
          .backgroundColor(Color.Green)
          .offset({
            x: 30,
            y: 70
          })
          // .zIndex(99)            // zIndex 改变层叠顺序

        Text('2')
          .width(100)
          .height(100)
          .backgroundColor(Color.Orange)

        Text('offset:\n x=50%\n y=50%')
          .width(100)
          .height(100)
          .backgroundColor(Color.Brown)
          .offset({
            x: '50%',
            y: '50%'
          })
      }
      .backgroundColor(Color.Pink)
      .height(300)
      .width(300)
      .margin({bottom: 20})
    }
    .width('100%')
    .height('100%')
  }
}