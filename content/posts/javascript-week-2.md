---
title: JavaScript 学习笔记 Week 2
date: 2019-01-19
tags: 
- Note
- JavaScript
---

怠惰的第二周○|￣|_

<!--more-->

### 1. 严格模式

已经9012了，也该与时俱进了，故打开严格模式以支持新特性

确保 “use strict” 出现在最顶部

```javascript
"use strict";
```

### 2. 数据类型
	
这部分的知识点很庞杂，在此仅列出对我来说值得记录的例子

- number

	```javascript
	alert( 1 / 0 ); // Infinity
	alert( "not a number" / 2 ); // NaN, 如果在数学表达式中有一个 NaN，会被传播到最终结果
	```

- string

	- 单引号与双引号在 JavaScript 中并没有什么差别

	- 反引号是功能扩展的引用，允许通过 ${…}，将变量和表达式嵌入到字符串中
	
		```javascript
		let name = "John"; 
		
		// embed a variable
		alert( `Hello, ${name}!` ); // Hello, John!
		
		// embed an expression
		alert( `the result is ${1 + 2}` ); // 结果是 3
		```

- boolean

	- 通常用于存储表示 yes 或 no 的值
	
		```javascript
		let ageFieldChecked = false; // no, age field is not checked
		```

	- 布尔值也可作为比较的结果：

		```javascript
		let isGreater = 4 > 1;
		alert( isGreater ); // true (比较的结果是 "yes")
		```

- typeof 运算符

	- 用于返回参数的类型，两种形式：typeof x 或者 typeof(x)
	- 返回的类型的字符串，比如 "string"

### 3. 类型转换

- ToString

	```javascript
	alert(value); //alert 会自动将任何值转换为字符串。算术运算符会将值转换为数字
	string(value)
	```
	
- ToNumber

	在算术函数和表达式中，会自动进行 number 类型转换
	
	也可以使用 Number(value) 显式地将这个值转换为 number 类型
	
	undefined转化为NaN， null转化为0
	
	注意，如果其中一个运算元是字符串，则另一个也会转换为字符串
	
	```javascript
	alert( 1 + '2' ); // '12' (字符串在加号右边)
	alert( '1' + 2 ); // '12' (字符串在加号左边)
	```

- ToBoolean

    - 假值，比如 0、空的字符串、null、undefined 和 NaN 变成 false。
    - 其他值（包括非空字符串）变成 true

- 其他注意点

	```javascript
	" -9\n" - 5 = -14
	```

### 4. 运算符

- 一元运算符：
	- 负号-
	- 正号+ 转化非数字到数字
	
		```javascript
		// 对数字无效
		let x = 1;
		alert( +x ); // 1
		
		let y = -2;
		alert( +y ); // -2
		
		// 转化非数字
		alert( +true ); // 1
		alert( +"" );   // 0
		```

- 二元运算符：
	- 加号+ 
	
		```javascript
		alert(2 + 2 + '1' ); // "41" 而不是 "221"
		```
	
	- 减号-

- 赋值运算符

	```javascript
	// 我们有时会在第三方库中见到这样的写法，我们自己不应该这样写。
	// 这样的小技巧让代码变得不整洁，阅读性也变差。
	let a = 1;
	let b = 2;
	
	let c = 3 - (a = b + 1);
	
	alert( a ); // 3
	alert( c ); // 0
	```

- 求余运算符%

	```javascript
	alert( 5 % 2 ); // 1 是 5 / 2 的余数
	```

- 幂运算符 **

	```javascript
	alert( 4 ** (1/2) ); // 2 (1 / 2 幂相当于平方，这是数学常识)
	```

### 5. 自相加/自相减

- 自相加 ++ 将变量与1相加；自相减 -- 将变量与1相减
	
- 当运算符在变量前，被称为「前置形式」：++counter

- 当运算符在变量后，被称为「后置形式」：counter++，后置形式返回旧值
 
	``` js
	let i=10;
	i++; // 此时，i++整体为10，然后i增加1，变为11
	
	let i=10;
	++i; // 此时，i增加1，变为11，++i整体为11
	```
	
### 6.修改并替换

```js
let n = 2;
n += 5; // now n = 7 (同 n = n + 5)
n *= 2; // now n = 14 (同n = n * 2)

alert( n ); // 14

let n = 2;
n *= 3 + 5;

alert( n ); // 16 （右侧计算首先进行，和 n *= 8 相同）
```

### 7.逗号运算符

```js
let a = (1 + 2, 3 + 4);

alert( a ); // 7 (3 + 4 的结果，1 + 2 被舍弃)
```