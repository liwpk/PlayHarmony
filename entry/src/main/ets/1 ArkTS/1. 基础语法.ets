// 常量 与 变量
const PI: number = 3.1415926
const API_KEY = "af"              //和 Swift 一样，支持类型自动推断。

let isPowerOff: boolean = false
let name = "HarmonyOS"            // ArkTS 中，let 是变量，const 是常量。
let message = `Hello ${name}`         // 字符串的插值语法（反引号）
console.log("message is ", message);
let numberOfBooks = 200           // Swift中 let 是常量，var 是变量。

// number类型在表示大整数（即超过-9007199254740991~9007199254740991）时会造成精度丢失。在开发时可以按需使用BigInt类型来确保精度：
let bigInt: BigInt = BigInt('999999999999999999999999999999999999999999999999999999999999');
console.info('bigInt:' + bigInt.toString());

/*  数据类型
    基本类型： string, number, boolean  (其包装类型Number,Boolean,String。包装类型为引用类型，如无必要，不建议使用)
    引用类型： Object, Array, 函数，自定义类型
 */

// 字符串常见操作
let str = "ABCDEFG"
str.charAt(1)       // "B"
str.charCodeAt(1)   // 66
str[0]              // "A"
str[str.length - 1] // "G"
str.charCodeAt(10)  // NaN

str.indexOf("CD")   // 2
str.lastIndexOf("CD") // 5
str.indexOf("BD")   // -1

str.slice(1,4)      // "BCD"
str.replace("BC", "AA")  // "AAADEFG"

str = " a a "
str.trim()

str = "028-12345678"
str.split("-")      // ["028", "12345678"]

// 类型转换
let num1: number = 1.1
let num2: number = 1.11111
let num3: number = 1.99999
console.log(num1.toFixed(2));    // 1.10
console.log(num2.toFixed(2));    // 1.11
console.log(num3.toFixed(2));    // 2.00  （保留两位小数，四舍五入）


// 联合类型： 允许一个变量有多个类型
let value: number | string
value = 100
value = "abc"

// 枚举
enum Size {
  Small, Middle, Large
}
Size.Middle


// 类型别名
type str = string
type Matrix = number[][]
type NullableObject = Object | null
type Handle = (s: string, no: number) => string
type Predicate <T> = (x: T) => boolean

// Record, 类似于 Map, dictionary, 用于存储键值对。
function testRecord() {
  const provinceToCapital: Record<string, string> = {
    "江苏": "南京",
    "山东": "济南",
    "四川": "成都",
  }
  console.log(provinceToCapital["四川"])
}

/*
  ArkTS容器类库中提供的各种容器:
  - 线性容器：ArrayList（动态数组）, List（单向链表）, LinkedList（双向链表）, Queue（单端队列）, Deque（双端队列）, Stack（栈）
  - 非线性容器：HashMap（基于哈希表的Map）, HashSet, TreeMap（基于红黑树的Map）, TreeSet, LightWeightMap, LightWeightSet
 */
function testHashSet() {
  let fruits = new HashSet<string>();
  fruits.add('apple');
  fruits.add('banana');
  fruits.add('apple');        //尝试再次添加'apple'
  for(const fruit of fruits) {
    console.log(`${fruit}`);
  }
  fruits.remove('banana');    //返回true
  console.log(JSON.stringify(Array.from(fruits)));  //输出：["apple"]
}