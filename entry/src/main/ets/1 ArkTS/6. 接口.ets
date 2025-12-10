/**
 * 接口，是可以用来约束和规范类的方法，提高开发效率的工具。
 *
  接口 和 抽象类 的区别：
- 接口中的所有成员都是抽象的，没有提供任何实现。
- 抽象类 可以提供部分实现。
 */

// 定义 个人信息接口
interface PersonalInfo {
  name: string;
  age: number;
  email: string;
}

// 定义 工作信息接口
interface WorkInfo {
  company: string;
  position: string;
  someMethod(): void;
}

// 定义 用户接口，继承自 PersonalInfo 和 WorkInfo
interface User extends PersonalInfo, WorkInfo {
  id: number;
}

// 接口的实现
class  Employee implements User {

  // 实现接口中约定的 属性 和 方法。
  id: number = 0
  name: string = 'default str'
  age: number = 0
  email: string = ''
  company: string = ''
  position: string = ''

  someMethod(): void {
    console.log("some method")
  }
}

function test() { q
  const user: User = {
    id: 1000,
    name: 'David',
    age: 20,
    email: 'abc@example.com',
    company: 'xyz Inc.',
    position: 'Developer',
    someMethod: (): void => {
      console.log("This is David.")
    };
  };
  console.log(JSON.stringify(user));
}