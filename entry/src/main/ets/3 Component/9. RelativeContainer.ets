@Entry
@Component

struct Index {
  build() {
    RelativeContainer() {
      Text('相对布局 ： RelativeContainer')
        .fontSize(28)
      Text('相对布局是在二维空间中的布局方式，不需要遵循线性布局的规则，布局方式更为自由。')
    }
  }
}