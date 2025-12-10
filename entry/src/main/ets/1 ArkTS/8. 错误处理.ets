
// ArkTS通过 try-catch-finally 语句对异常进行捕获和处理。
try {
  //可能产生异常的代码
} catch (error) {
  //处理异常的代码
} finally {
  //无论是否产生异常，都会执行的代码
}

function generatArray() {
  try {
    const arr = new Array<number>(-5)
    console.log("创建了一个数组")
  } catch (err) {
    console.log("发生了错误。 ", err)
    if (err instanceof TypeError) {
      console.log("错误类型是 TypeError")
    } else if (err instanceof RangeError) {
      console.log("错误类型是 RangeError")
    }

  } finally {
    console.log("尝试创建数组的操作已结束")
  }
}

function operateDatabase() {
  try {
    // 操作数据库
  } catch (error) {
    // 处理操作数据库产生的异常
  } finally {
    //关闭数据库
  }
}

function operateFile() {
  try {
    // 操作文件
  } catch (error) {
    // 处理操作文件产生的异常
  } finally {
    //关闭文件
  }
}


// 使用throw手动抛出错误