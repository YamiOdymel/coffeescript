## 產生器函式

CoffeeScript 能夠以 `yield` 關鍵字使用 ES2015 的 [產生器函式](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function*)，而不是使用 `function*(){}` 這種沒意義的東西－因為在 CoffeeScript 裡：有產生（`yield`）關鍵字的函式就是產生器函式。

```
codeFor('generators', 'ps.next().value')
```

`yield*` 被稱為 `yield from`，而當你想建立一個不會產生的產生器函式時，用上 `yield return` 就可以了。

<div id="generator-iteration" class="bookmark"></div>

你可以透過 `for...from`方法來遍歷一個產生器函式。

```
codeFor('generator_iteration', 'getFibonacciNumbers(10)')
```
