@Entry
@Component

struct Index {
  build() {
    RelativeContainer() {
      Text('栅格布局 ：GridRow、GridCol')
        .fontSize(28)
      Text('栅格是多设备场景下通用的辅助定位工具，可将空间分割为有规律的栅格。')
    }
  }
}