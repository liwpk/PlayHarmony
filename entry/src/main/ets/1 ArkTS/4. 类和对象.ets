import { Education } from '../SomeFiles/Education';

// 定义类
class PhysicalEducation {
  static studentCount = 0;   // 静态字段，只能通过类名访问。

  readonly stuId: string;
  examScore: number;

  // private 成员的名称前添加一个下画线
  private _examScore = 0;

  // 构造函数，以关键字 constructor 开头的函数
  constructor(sId: string, score: number) {
    this.stuId = sId;
    this.examScore = score;
    PhysicalEducation.studentCount++;
  }

  calculateTotalScore(): number {
    return this.examScore
  }

  static staticMethod() {
    console.log('这是一个静态方法');
  }
}

// 创建对象
let obj = new PhysicalEducation("id_12345", 98)
let num = obj.calculateTotalScore()
let count = PhysicalEducation.studentCount
PhysicalEducation.staticMethod()

let edu = new Education()

// 继承，只支持单继承，使用 Extends 关键字
class ClassA {
  x: number = 1
  test() {
    this.x = 11
  }
}
class ClassB extends ClassA {
  y: number = 2
}
class ClassC extends ClassB {
  z: number = 3
  test(): void {
    this.z = 33
  }
}

function test() {
  let cc: ClassA = new ClassC()
  cc.x
  if (cc instanceof ClassB) {
    (cc as ClassB).y
  }
  if (cc instanceof ClassC) {
    (cc as ClassC).z
  }
}
// 多态，子类继承父类，并可以重写父类方法，使不同的实例对象对同一行为有不同的表现。
