@Entry
@Component

struct Index {
  build() {
    Column(){
      Text('层叠布局 : Stack')
        .fontSize(28)
        .fontWeight(700)
      Text('组件需要有堆叠效果时优先考虑此布局。')
      Stack({alignContent: Alignment.TopStart}){
        Text()
          .backgroundColor(Color.Gray)
          .width(250)
          .height(250)
        Text()
          .backgroundColor(Color.Green)
          .width(200)
          .height(200)
        Text()
          .backgroundColor(Color.Orange)
          .width(150)
          .height(150)
        Text()
          .backgroundColor(Color.Red)
          .width(100)
          .height(100)
        Text()
          .backgroundColor(Color.Blue)
          .width(50)
          .height(50)
          .offset({
            x: 50,
          })
      }
      .width(300)
      .height(300)
      .backgroundColor(Color.Pink)
      .margin({bottom: 20})

      Text('state styles')
        .width(300)
        .height(30)
        .backgroundColor(Color.Pink)
        .stateStyles({
          pressed: {
            .backgroundColor(Color.Orange)
            .height(80)
          }
        })
        .animation({
          duration: 300,
          curve: Curve.EaseInOut
        })

      Text('translate')
        .width(300)
        .height(30)
        .backgroundColor(Color.Pink)
        .translate({
          x: 20,
          y: 20,
        })

      Text('translate & animation & pressed')
        .margin({top: 40})
        .width(300)
        .height(30)
        .backgroundColor(Color.Pink)
        .stateStyles({
          pressed: {
            .translate({
              x:20,
              y: 20,
            })
          }
        })

      Text('scale & animation & pressed')
        .margin({top: 40})
        .width(300)
        .height(30)
        .backgroundColor(Color.Pink)
        .stateStyles({
          pressed: {
            .scale({
              x: 1.1,
              y: 1.1
            })
          }
        })
    }
    .width('100%')
    .height('100%')
  }
}