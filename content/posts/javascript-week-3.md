---
title: JavaScript 学习笔记 Week 3
date: 2019-01-26
tags: 
- Note
- JavaScript
---

0120~0126

这一周入手了《HTML & CSS设计与构建网站》这本书，所以主要在补习CSS方面的知识（真心认同CSS是艺术这种说法Orz）

JS的话，了解了下fetch API，并且在<a href="https://blog.rainy.me/about.html" target="_blank">越大师</a>的帮助下总算是做出了一个像样一点的项目，这里是链接：<a href="https://test.ericxiang.com" target="_blank">Google-homepage</a> ，下面就代码写一下笔记：

<!--more-->

```js
document.querySelector('#form').onsubmit = async (e) => { //找到form这个元素，如果有submit动作就触发此事件，并用异步实现，注1
  e.preventDefault(); //阻止页面重置
  const q = document.querySelector('#search').value; //声明q并将search元素中输入的内容赋值给它
  const res = await fetch (`https://api.plankton.technology/get?q=${q}&offset=0`, { mode: 'cors' }); //发起一个GET请求给此api，并把结果赋值给res，注1
  const data = await res.json(); //将结果res转化为json版本，并赋值给data，至此，我们得到了json版本的请求结果
  let str = '<h2><a href="https://bubble.plankton.technology/" target="_blank">Bubble</a></h2>';
  data.forEach(link => { //列出数组data的每个元素

      str += `
      <div  class="result" ><h3>${link.title}</h3>
      <cite>
          <a href=${link.url} target="_blank">
              ${link.url}    
          </a>
       </cite>
       </div>
      `

  });
  document.getElementById('result').innerHTML = str;
}
```

注：此部分涉及Promises, async/await等，就我目前进度来说稍有超前，所以详细的笔记将在之后学到时记录。