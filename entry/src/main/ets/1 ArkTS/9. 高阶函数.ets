
// filter, 它允许用户根据给定的条件筛选出数组中的元素，返回一个新的数组，这个新数组只包含满足条件的元素。
function testFilter() {
  let numbers = [1, 2, 3, 4, 5, 6];
  let evenNumbers = numbers.filter(num => num % 2 === 0);
  console.log(JSON.stringify(evenNumbers));       //输出：[2,4,6]
}

interface Student {
  name: string;
  score: number;
}

function test() {
  const students: Student[] = [
    { name: "Alice", score: 50 },
    { name: "Bob", score: 70 },
    { name: "Charlie", score: 60 },
    { name: "David", score: 90 }
  ];
  const passedStudents = students.filter(student => student.score > 60);
  //输出：[{"name":"Bob","score":70},{"name":"David","score":90}]
  console.log(JSON.stringify(passedStudents));
}


// map, 对数组中的每个元素执行一个转换操作，并返回一个新的数组
function testMap() {
  let numbers: number[] = [1, 2, 3, 4];
  let squares: number[] = numbers.map(num => num * num);
  console.log(JSON.stringify(squares)); //输出：[1,4,9,16]
}

// reduce，用于将数组中的所有元素归纳（或者说“减少”）为单个值。
function testReduce() {
  const numbers = [1, 2, 3, 4];
  const sum = numbers.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
  console.log(sum.toString()); //输出：10
}

// forEach
function testForEach() {
  let sum = 0;
  let numbers: number[] = [1, 2, 3, 4];
  numbers.forEach(value => {
    sum += value;
  });
  console.log(sum.toString()); //输出: 10
}

// find, 用于查找数组中满足提供的回调函数条件的第一个元素。
function testFind() {
  const numbers: number[] = [7, 10, 12, 15, 20];
  const found = numbers.find(element => element > 11);
  if (found !== undefined) {
    console.log(found.toString());
  } else {
    console.log('没有找到符合条件的元素')
  }
}

// sort, 用于对数组的元素进行原地排序（直接修改原数组），并返回排序后的数组。
function testSort() {
  const fruits: string[] = ["Banana", "Orange", "Apple", "Mango"];
  fruits.sort();
  //输出：["Apple","Banana","Mango","Orange"]
  console.log(JSON.stringify(fruits));
}
// 接收一个比较函数 compareFunction 作为参数。如果compareFunction(a, b) 的返回值小于0, a会排在b之前。
function testSort2() {
  const numbers: number[] = [4, 2, 5, 1, 3];
  numbers.sort((a, b) => a - b);
  console.log(JSON.stringify(numbers)); //输出：[1,2,3,4,5]
}
