### 函式參數與物件解構預設值

依據 [ES2015 的函式參數預設值規範](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Default_parameters)還有[物件解構預設值](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Default_values)的相關文件表示：某個變數為 `undefined` 或完全沒有設置的時候才能夠以預設值作為內容。但是在 CoffeeScript 1.x 版本中，只要變數的值為 `null` 就會採用預設值。

```
codeFor('breaking_change_function_parameter_default_values', 'f(null)')
```

```
codeFor('breaking_change_destructuring_default_values', 'a')
```
