## 變參、其餘與展開運算子

JavaScript 的 `arguments` 物件在處理多個傳入參數時很方便。而 CoffeeScript 的 `...` 正因此想法而生，兩者功能皆相同。在之後的 ES2015 也有了相同的[其餘運算子](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters)。

```
codeFor('splats', true)
```

<div id="array-spread" class="bookmark"></div>

其餘運算子同時也能夠用來讓我們「省略」陣列元素⋯

```
codeFor('array_spread', 'all')
```

<div id="object-spread" class="bookmark"></div>

⋯還有物件屬性。

```
codeFor('object_spread', 'JSON.stringify(currentUser)')
```

這功能在 ECMAScript 中稱之為[展開運算子](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_operator)，並且在 ES2015 時就支援展開陣列、而 ES2018 時支援展開物件。
