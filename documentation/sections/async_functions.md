## 非同步函式

ES2017 的[非同步函式](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)現在能夠透過 `await` 關鍵字進行使用了。就像產生器函式那樣，不需要額外使用 `async` 關鍵字；非同步函式在 CoffeeScript 中寫起來就像一般的函式。

`yield return` 可以強迫函式成為一個產生器函式，而 `await return` 則能夠強迫讓一個函式成為非同步函式。

```
codeFor('async', true)
```
