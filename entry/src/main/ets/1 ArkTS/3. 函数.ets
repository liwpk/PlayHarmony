// ArkTS 的函数只能定义在 ets 文件的顶层，不允许函数嵌套定义。

@Entry
@Component struct Index {
  build() {
    Row() {
      Column(){
        Button("Run").onClick((event: ClickEvent) => {
          sayHi("小艺小艺")
        })
      }
      .width(200)
    }
    .height(100)
  }
}

function sayHi(name: string) {
  console.log(`Hello, ${name}`)
}

// 带返回值的函数
function fibonacci(n: number): number {
  if ( n === 1 || n === 2) {
    return 1
  }
  let a = 1
  let b = 1
  let c = 0
  for (let i = 3; i <= n; i++) {
    c = a + b
    a = b
    b = c
  }
  return c
}

// 可选参数。  ⚠️：可选参数 必须定义在 必选参数 之后
function summation(num1: number, num2: number, num3?: number) {
  if (num3 === undefined) {
    return num1 + num2
  }
  return num1 + num2 + num3
}
let sum = summation(1, 2, 3)
sum = summation(5, 6)

// 默认参数。  ⚠️：默认参数 必须定义在 必选参数 之后
function summation2(num1: number, num2: number, num3: number = 100) {
  return num1 + num2 + num3
}
let sum2 = summation2(1, 2, 3)
sum2 = summation2(5, 6)

// 剩余参数（无固定参数）。  ⚠️：剩余参数 必须定义在末尾，且是某数组类型
function summation3(num1: number, num2: number, ...nums: number[]) {
  let sum = num1 + num2
  for (let num of nums) {
    sum += num
  }
  return sum
}

// 箭头函数, lambda 表达式，匿名函数，  一般格式为    ( 参数列表 ) : 返回类型 => { 函数体 }
(message: string) => {
  console.log(message);
}
// 箭头函数的 返回类型 可以省略 （编译器通过函数体来自动推断）

// 函数体 只有 1 行 的情况下，可以省略花括号
const printInfo = (name: string) => console.log(name);

// 箭头函数常用于 作为回调函数。

// 箭头函数的主要用法： 作为变量值 ； 作为函数参数； 作为函数返回值。
let add: (x: number, y: number) => number
add = (a, b) => {
  return a + b
}
add = (a, b) => a + b         // 省略 返回类型， 省略 花括号



// 闭包函数，一个函数可以将另一个函数当作返回值，保留对内部作用域的访问。
function outerFunc(): () => string {
  let count = 0
  return (): string => {
    count++;
    return count.toString()
  }
}
let invoker = outerFunc()
console.log(invoker());   // 输出：1
console.log(invoker());   // 输出：2

type returnType = () => string;       // 起一个函数别名
function outerFunc2(): returnType {
  let count = 0
  return (): string => {
    count++;
    return count.toString()
  }
}