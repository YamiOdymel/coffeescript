## 模板字串

CoffeeScript 支援 [ES2015 的模板字串](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Template_literals#Tagged_template_literals)，這讓你能夠編輯、更改字串插值的內容。如果你在字串前直接寫上一個函式名稱（中間沒有空格）的話，CoffeeScript 就會直接將其輸出為 ES2015 的模板字串，而[這會造成](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Template_literals#Tagged_template_literals)：字串內的插值都會變成參數傳遞至該函式，並且以該函式所回傳的值作為實際插值內容。

```
codeFor('tagged_template_literals', 'greet("greg", "awesome")')
```
