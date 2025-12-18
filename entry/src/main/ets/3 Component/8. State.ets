@Entry
@Component




struct Index {
  // State 状态： 变量值改变会引起 UI 更新
  @State hi: string = 'Hello'

  // 常规变量：不会引起 UI 更新
  name: string = 'David'

  build() {
    Column(){
      Row({ space: 10 }) {
        Text(this.hi)
        Text(this.name)
      }
      .padding(10)
      .backgroundColor(Color.Pink)

      Button('change text', { type: ButtonType.Normal })
        .onClick(() => {
          this.hi = '你好'
          this.name = '阿帕奇'
          console.log('normal button clicked!')
        })
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Start)
  }
}