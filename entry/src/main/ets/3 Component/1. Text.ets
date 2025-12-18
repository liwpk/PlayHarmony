@Entry

@Component
struct Index  {
  build() {
    Column() {
      Text("你好鸿蒙")
        .fontFamily("HarmonyHeiTi-Bold")
        .fontSize(26)
        .fontWeight(700)
        .lineHeight(40)
        .textAlign(TextAlign.Center)
        .width('100%')
        .backgroundColor(Color.Orange)
        .margin({ bottom: 10})
      Text("HarmonyOS SDK 是面向鸿蒙应用和元服务开发的开放能力合集，提供包括应用框架、应用服务、系统、媒体、AI、图形在内的六大领域丰富完备的开放能力，助力构建焕然一新的鸿蒙应用和元服务，带来创新易用的全场景体验。")
        .backgroundColor(Color.Yellow)
        .fontSize(18)
        .lineHeight(35)
        .padding(10)
        .margin(10)
      Text("¥21.8")
        .fontSize(24)
        .fontColor('#3F93B0')
        .decoration({
          type: TextDecorationType.LineThrough,
          color: '#3F93B0',
          style: TextDecorationStyle.DOUBLE
        })
      Row() {
        Text("对齐方式Center")
          .width(150)
          .height(60)
          .background(Color.Pink)
          .textAlign(TextAlign.Center)
          .margin({ right: 20})
        Text("对齐方式")
          .width(150)
          .height(60)
          .background(Color.Pink)
          .textAlign(TextAlign.End)
          .align(Alignment.Top)
      }
      Text("开发者在2025年10月31日至2026年10月25日报名本计划、完成鸿蒙智能体开发并成功上架，将有机会获得现金激励。")
        .backgroundColor(Color.Yellow)
        .margin(10)
        .fontSize(20)
        .textIndent(40)   // 首行缩进 2 字。 即 fontSize 的 2 倍。
      Text("深入解读鸿蒙核心设计理念和技术原理，带你由开发实践向技术原理进阶。")
        .margin(10)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })

    }
  }
}