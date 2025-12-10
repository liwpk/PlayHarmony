
/**
 抽象类 是解决什么问题的？
 在设计一个类时，我们可能知道该类应该包含某些方法或属性，但无法预先知道如何实现这些方法或属性。这时抽象类就派上用场啦。
 ArkTS允许在抽象类中定义抽象方法和抽象属性，它们可以只有签名，没有具体实现。
 当子类继承了抽象父类之后，我们再根据子类的需求来实现抽象方法和抽象属性。
 如果子类没有实现父类中所有的抽象成员，那么子类也必须定义为抽象类。
 */

abstract class Course {
  abstract totalScore: number
}

class MyCourse extends Course {
  totalScore: number = 0
}


abstract class Shape {
  abstract draw(): void;
  abstract calculateArea(): number;
}

abstract class Circle extends Shape {
  private _radius: number;
  constructor(radius: number) {
    super();
    this._radius = radius;
  }
  get radius() {
    return this._radius;
  }

  // 实现了Shape的calculateArea方法
  calculateArea(): number {
    return Math.PI * this.radius * this.radius;
  }
  //draw方法没有在Circle中实现，所以Circle必须被声明为抽象类
}

class DetailedCircle extends Circle {
  // 实现了Circle类未实现的抽象方法
  draw(): void {
    console.log(`画了一个半径为${this.radius}的圆`);
  }
}

function test() {
  //const myShape = new Shape(); //错误：不能实例化抽象类
  //const myCircle = new Circle(5); //错误：不能实例化抽象类
  const myDetailedCircle = new DetailedCircle(5);
  myDetailedCircle.draw();
  console.log(myDetailedCircle.calculateArea().toString());
}