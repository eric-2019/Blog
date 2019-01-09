---
title: JavaScript 学习笔记 Week 1
date: 2019-01-06
tags: 
- Note
- JavaScript
---



今天正式开始学习JS，同时打算以笔记的形式记录我的学习过程，目前计划每周更新一篇，拭目以待~


### 1. js代码与css类似，需要写在script标签中

### 2. hello world
	
	```
	alert("Hello world"); *弹出窗口*
	document.write("Hello world"); *在body中输出内容*
	console.log("Hello world"); *在控制台中输出内容*
	```

### 3. 按钮触发

	```
	<body>
	<button onclick="alert('内容');">按钮</button>
	<a href="javascript:alert('逗你的')">点我有惊喜</a> 
	</body>
	```

### 4. JS基本语法

- JS中严格区分大小写
- 每一条语句以分号结尾
- 自动忽略多个分号和换行，可以此进行格式化

### 5. 字面量和变量

- 字面量不可变，可直接使用不加引号，如123
- 变量可以用来保存字面量，值可以改变，如x=1
- 使用var关键字声明变量，var a;
- 并赋值a = 123;
- var a = 123; 使以上两步的合并