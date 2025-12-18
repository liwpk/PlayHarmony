@Entry
@Component
struct Index {
  build() {
    Column({ space: 10}) {         // space：子组件之间的间距
      Text("线性布局： Column & Row")
        .fontSize(28)
        .fontWeight(700)
      Text('如果布局内子元素超过1个时，且能够以某种方式线性排列时优先考虑此布局。')

      Row({ space: 10}) {
        Column() {   // Column， 用于沿 垂直方向 布局
          Button('normal button', { type: ButtonType.Normal })
            .border({
              width: 3,
              color: Color.Red,
              radius: 8
            })
            .onClick(() => {
              console.log('normal button clicked!')
            })
          Button({ type: ButtonType.Circle, stateEffect: true }) {
            LoadingProgress()
              .width(30)
              .height(30)
          }

          Button('Capsule Button', { type: ButtonType.Capsule }).onClick((event: ClickEvent) => {
            console.log('Capsule btn clicked!');
          })
        }
        .alignItems(HorizontalAlign.Start)    // 交叉轴上的对齐方式: 水平起始对齐
        .justifyContent(FlexAlign.SpaceAround)
        .height('100%')

        Text("TEXT")
          .height(40)
          .padding(10)
          .backgroundColor(Color.Orange)
          .borderRadius({
            topRight: 12
          })
      }
      .backgroundColor(Color.Pink)
      .width('100%')
      .height(150)
      .alignItems(VerticalAlign.Top)  // 交叉轴上的对其方式: 垂直顶端对齐
      .justifyContent(FlexAlign.SpaceBetween) // 设置子组件的排列

      Row() {
        Text('线性渐变 linearGradient')
          .fontSize(24)
          .padding(15)
          .width('100%')
          .linearGradient({
            colors: [[Color.Red, 0], [Color.Yellow, 1]],
            direction: GradientDirection.Right
          })
      }
      .border({
        width: 2,
        color: Color.Green,
        radius: 8,
        style: BorderStyle.Dashed,
      })

      Row() {
        Column() {
          Image('https://consumer.huawei.com/content/dam/huawei-cbg-site/cn/mkt/launch/251118/vosa/phones/mate80-pro-max.png')
            .height(150)
            .margin(10)
          Column({space:10}){
            Text('最新')
              .fontColor(Color.Red)
            Text('HUAWEI Mate 80 Pro Max')
              .fontSize(18)
              .fontWeight(700)
              .margin({bottom: 20})
            Text('¥7999起')
              .margin({bottom: 5})
            Row() {
              Text('了解更多')
              Image($r('app.media.angleRight'))
                .height(10)
                .margin({right: 20})
              Text('购买')
              Image($r('app.media.angleRight'))
                .height(10)
            }
            .margin({bottom: 20})
          }
          .alignItems(HorizontalAlign.Start)
        }
        .shadow({
          radius: 12,
          color: Color.Gray,
          offsetX: 6,
          offsetY: 6,
        })
        .width('80%')
      }

      Row() {
        Text('A')
          .backgroundColor(Color.Red)
          .layoutWeight(1)
        Text('BB')
          .alignSelf(ItemAlign.Start)
          .backgroundColor(Color.Red)
        Text('C')
          .backgroundColor(Color.Red)
          .layoutWeight(1)            // 按份数 瓜分 父组件剩余的尺寸
      }
      .alignItems(VerticalAlign.Bottom)
      .backgroundColor(Color.Pink)
      .height(60)
      .width('80%')

      Row(){
        Image($r('app.media.apache'))
          .height(40)
          .padding(5)
        Text('插画设计师')
          .layoutWeight(1)
        Text('关注')
          .borderWidth(1)
      }
      .width('80%')
      .backgroundColor(Color.Yellow)
    }
    .width('100%')
  }
}