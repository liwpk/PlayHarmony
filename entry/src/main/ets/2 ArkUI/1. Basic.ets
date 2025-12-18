import { MyComponent } from './2. CustomComponent'
import { LifeCycle } from './3. LifeCycle'
import { CustomLayout } from './4. CustomLayout'

@Entry
  // @Entry 装饰的组件将作为UI页面的入口。
  // 在单个UI页面中，仅允许存在一个由@Entry装饰的组件作为页面的入口。
@Component

struct Hello {
  @State message: string = "World"            // State、Entry、Component 装饰器
  @State counter: number = 1
  @State showCustomComponent: boolean = true
  addCounter = () => {
    this.counter++
    console.log(`counter = ${this.counter}`)
  }

  build() {
    // build()函数下的根节点唯一且必要，且必须为容器组件 ( @Entry装饰的自定义组件 )
    Column() {
      Text('@State 表示组件中的状态变量，状态变量变化会触发UI刷新。')
      Divider()
      Row(){
        Text(`Hello ${this.message}`)
          .fontSize(24)
          .margin(10)                           // margin  属性方法
        Button('Say')
          .onClick((event: ClickEvent) => {     // onClick 事件方法
            this.message = 'David'
          })
        Button('切换自定义组件').onClick((event: ClickEvent) => {
          this.showCustomComponent = !this.showCustomComponent
        })
      }

      // 如果组件支持 子组件配置，则需在尾随闭包"{...}"中为组件添加子组件的UI描述。
      // 容器组件 均支持 子组件配置，可以实现相对复杂的多级嵌套。
      Row(){
        Text(`counter: ${this.counter}`)
        Button('counter + 1').onClick(this.addCounter)  // 可以传入箭头函数
      }
      .margin(10)
      .padding(10)
      .alignItems(VerticalAlign.Center)
      .backgroundColor(Color.Pink)
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)

      if (this.showCustomComponent) {
        MyComponent({ str: '自定义组件', count: this.counter, btnAction: this.addCounter})
      }else {
        LifeCycle()
      }

      CustomLayout({ builder: ColumnChildren })
        .backgroundColor(Color.Pink)
        .margin(10)
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Start)
  }
}

// 通过builder的方式传递多个组件，作为自定义组件的一级子组件（即不包含容器组件，如Column）
@Builder
function ColumnChildren() {
  ForEach([1, 2, 3], (index: number) => { // 暂不支持lazyForEach的写法
    Text('S' + index)
      .fontSize(30)
      .width(100)
      .height(100)
      .borderWidth(2)
      .offset({ x: 10, y: 20 })
  })
}