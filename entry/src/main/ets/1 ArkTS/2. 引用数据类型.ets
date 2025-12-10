// 数组
let numbers: number[]
let numbers2: Array<string>
let numbers3 = [1, 2, 3, 4]   // 类型自动推断
const values = ["晴", 18]      // 编译器自动推断 values 类型为 (string | number)[]

numbers3.splice(1, 2, 8, 9)
numbers3.indexOf(4)


// 集合
const emptySet = new Set<string>();
const numSet = new Set([1, 2, 3, 4, 5]);
let fruits: Set<string> = new Set();
fruits.add('apple');
fruits.add('banana');

// 去重： 由于Set中的元素是唯一的，我们可以利用这一特性来去除数组中的重复元素
const setNumbers = [1, 2, 2, 3, 4, 4, 5];
const uniqueNumbers = new Set(setNumbers);
console.log(JSON.stringify(Array.from(uniqueNumbers))); //输出：[1,2,3,4,5]


// 字典 Map
const emptyMap = new Map<string, number>();   // 创建一个空Map
const fruitMap = new Map<string, number>([    // 使用二维数组初始化Map
  ['apple', 2],
  ['banana', 3],
  ['cherry', 4]
]);
fruitMap.set('apple', 10);    //更新现有元素
fruitMap.delete('banana');    //键存在，删除成功，返回true
const appleCount = fruitMap.get('apple');     //查询元素
if (appleCount !== undefined) {
  console.log(appleCount.toString());         //输出：10
}


// 元组
// 元组是一种特殊的数组类型，它允许存储固定数量的元素，且这些元素的类型不必相同。
let userInfo: [string, number] = ['Alice', 30];
let user: [string, number, boolean?] = ['Bob', 25];
user = ['Bob', 25, true];
let numbers4: [number, ...string[]] = [1, 'one', 'two', 'three'];