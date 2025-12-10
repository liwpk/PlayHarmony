// null 是ArkTS内置的类型，它只有一个值，就是null，表示“没有值”。

// 有时会存在声明变量时不确定初始值。在这类情况下，通常使用联合类型包含 null 值。
let userAge: number | null = null;  // 用户年龄暂时未知，设为 null.
// 空安全机制的三种方式：
if (userAge != null) {
  // 1. 使用 if/else 进行判空
}
// 2. 空合运算符
let age = userAge ?? 0
// 3. 可选链方式


// undefined 是ArkTS内置的类型，它只有一个值，就是undefined。
function printName(name?: string) {
  console.log(name)               // name? 相当于是 string | undefined
}

// 可选链 （简直和 Swift 一模一样）
interface Address {
  street?: string
  city?: string
}
interface Profile {
  name?: string
  address?: Address
}
interface User {
  profile?: Profile
}
function getCity(user: User): string | undefined {
  return user.profile?.address?.city
}

// 空合运算符
function getName(user: User): string {
  return user.profile?.name ?? "匿名人士"
}
