
/*
  泛型指的是 类型的参数化 。
  参数化类型是在定义时未知但需要在使用时指定的类型。 无论是函数定义还是类型定义，都可以采用泛型形式。
  通过使用泛型，我们可以创建能够 工作于多种数据类型 的组件，而 不必为每种数据类型 编写重复的代码。

  理解泛型（参数化类型）类似于理解函数参数。
  - 对于函数，在定义函数时使用形参作为占位符，在调用函数时给形参传递相应的实参。
  - 对于泛型函数或泛型类型，在定义泛型函数或泛型类型时，使用类型标识符（类型形参）来表示未知的类型，
    在调用泛型函数或实例化泛型类型时，为类型标识符传递具体的类型（类型实参）。

  泛型函数
  如果一个函数定义了一到多个 类型形参 ，则将该函数称为泛型函数。

  泛型类型（泛型类，泛型接口）
  - 如果一个类定义了一个或多个类型形参，则将该类称为 泛型类。
  - 如果一个接口定义了一个或多个类型形参，则将该接口称为 泛型接口。

  泛型约束
    泛型类型的类型参数可以被限制只能取某些特定的值。
 */

function filterByCondition<T>(array: T[], condition: (value: T) => boolean): T[] {
  const filteredArray: T[] = [];    //创建一个同类型的空数组来存放过滤后的元素
  //遍历传入的数组
  for (const item of array) {
    //调用条件函数，并检查当前元素是否满足条件
    if (condition(item)) {
      filteredArray.push(item); //如果满足条件，将元素添加到过滤后的数组中
    }
  }
  return filteredArray; //返回过滤后的数组
}

// 默认类型：  在定义泛型函数时，可以为类型形参T设置默认类型
function processData<T = string>(data?: T): T {
  return data as T;
}
function test() {
  const result1 = processData(42); //推断出类型实参为number，覆盖了默认类型string
  console.log(result1.toString()) //输出：42
  const result2 = processData(); //无法推断出类型实参，使用默认类型string
  console.log(result2) //输出：undefined
}

// 泛型约束： 在定义泛型函数时，可以为类型形参指定泛型约束，以明确类型形参所具备的操作与能力。
// 约束类型可以是基本类型、接口、类等。
function filterByCondition2<T extends string>(array: T[], condition: (value: T) => boolean): T[] {
  const filteredArray: T[] = [];
  for (const item of array) {
    if (condition(item)) {
      filteredArray.push(item);
    }
  }
  return filteredArray;
}
function test2() {
  const words = ['apple', 'banana', 'cherry'];
  const longWords = filterByCondition2<string>(words, word => word.length > 5);
  console.log(JSON.stringify(longWords));   //输出：["banana","cherry"]

  const numbers = [1, 2, 3, 4, 5];
  //编译错误，类型实参number不满足泛型约束
  // const evenNumbers = filterByCondition2<number>(numbers, num => num % 2 === 0);
  // console.log(JSON.stringify(evenNumbers));
}


// 泛型类, 一个类定义了一个或多个类型形参
class KeyValuePair<K, V> {
  key: K;
  value: V;
  constructor(key: K, value: V) {
    this.key = key;
    this.value = value;
  }
}
function testKeyValuePair() {
  // 显式指明类型实参
  const pair1 = new KeyValuePair<string, number>('语文', 98)
  console.log(`pair1: key = ${pair1.key}, value = ${pair1.value}`)

  // 缺省类型实参，交由编译器自动推断
  let pair2 = new KeyValuePair('数学', 100)
  console.log(`pair2: key = ${pair2.key}, value = ${pair2.value}`)
}

class Box<T = string> {
  content: T;

  constructor(content?: T) {
    this.content = content as T;
  }
}
function testBox() {
  const box1 = new Box(18);             //推断出类型实参为number，覆盖了默认类型string
  console.log(box1.content.toString())  //输出：18
  const box2 = new Box(); //无法推断出类型实参，使用默认类型string
  console.log(box2.content) //输出：undefined
}

// 泛型接口， 一个接口定义了一个或多个类型形参
interface Equatable<T> {
  equals(other: T): boolean;
}

interface Identifiable {
  id: number;
}
// 泛型约束, 可以为类型形参设置默认类型或指定泛型约束
interface Equatable2<T extends Identifiable> {
  equals(other: T): boolean;
}

interface Hashable {
  hash(): number;
}
class MyHashMap<Key extends Hashable, Value> {
  public set(k: Key, v: Value) {
    let h = k.hash();
    // ...其他代码...
  }
}