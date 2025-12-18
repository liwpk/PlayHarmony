@Component

export struct CustomLayout {
  @Builder
  doNothingBuilder() {
  }

  @BuilderParam builder: ()=>void = this.doNothingBuilder
  @State startSize: number = 100
  result: SizeResult = {
    width: 0,
    height: 0
  }

  // 第一步：计算各子组件的大小
  onMeasureSize(selfLayoutInfo: GeometryInfo, children: Measurable[], constraint: ConstraintSizeOptions): SizeResult {
    let size = 100
    children.forEach(child => {
      let result: MeasureResult = child.measure({ minHeight: size, minWidth: size, maxWidth: size, maxHeight: size })
      size += result.width / 2;
    });
    // this.result在该用例中代表自定义组件本身的大小，onMeasureSize方法返回的是组件自身的尺寸。
    this.result.width = 100;
    this.result.height = 400;
    return this.result;
  }

  // 第二步：放置各子组件的位置
  onPlaceChildren(selfLayoutInfo: GeometryInfo, children: Layoutable[], constraint: ConstraintSizeOptions): void {
    let startPos = 300;
    children.forEach((child) => {
      let pos = startPos - child.measureResult.height;
      child.layout({ x: pos, y: pos })
    })
  }

  build() {
    this.builder()
  }
}