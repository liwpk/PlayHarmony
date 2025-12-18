@Component

export struct LifeCycle {
  build() {
    Column({space:5}) {
      Text('生命周期')
        .fontSize(24)
      Row(){
        Text('1. aboutToAppear')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Text('组件即将出现时回调该接口')
          .fontSize(16)
      }
      Row(){
        Text('2. build')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Text('调用组件的 build 函数')
          .fontSize(16)
      }
      Row(){
        Text('3. onDidBuild')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Text('在组件首次渲染触发的build函数执行完成之后回调该接口，后续组件重新渲染将不回调该接口。')
          .fontSize(16)
      }
      Row(){
        Text('4. aboutToDisappear')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Text('在自定义组件析构销毁之前执行。再此不要改变状态变量，可能会导致应用程序行为不稳定。')
          .fontSize(16)
      }
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .padding(5)
  }
}