import { DocumentScanner } from "@hms.ai.DocumentScanner"

@Component

export struct MyComponent {
  @State str:string = ''
  @State count: number = 0
  btnAction? : () => void
  @Builder doSomeRender() {
    Text('doSomeRender')
      .backgroundColor(Color.Red)
  }


  // 所有在 build()函数 中声明的语句统称为 UI描述
  build() {
    Column(){
      Text(`${this.str}`)
        .fontSize(24)
        .margin(10)
      this.doSomeRender()       // 调用用 @Builder 装饰的方法

      Text('在ArkUI中，UI显示的内容均为组件。\n由框架直接提供的称为系统组件，\n由开发者定义的称为自定义组件。')
        .fontSize(18)
      Text(`count = ${this.count}`)
      Button('add count').onClick((event: ClickEvent) => {
        if (this.btnAction) {
          this.btnAction()
        }
      })
    }
    .backgroundColor(Color.Pink)
    .width('100%')
  }
}

