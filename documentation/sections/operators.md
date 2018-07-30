## 運算子與歧義

由於 `==` 運算符常常發生令人不愉快的小意外、而且和其他語言有著不太ㄧ樣的意思。為此，CoffeeScript 將 `==` 編譯為 `===`，而 `!=` 將會編譯成 `!==`。額外一點，`is` 會被編譯成 `===`，而 `isnt` 編譯為 `!==`。

你可以把 `not` 當作 `!` 使用。

有關邏輯上的運算符，`and` 會編譯成 `&&`，而 `or` 則是 `||`。

在 `while`、`if`/`else` 和 `switch`/`when` 之中，透過 `then` 來從表達式中區分條件式，而不是換行或是使用分號。

和 [YAML](http://yaml.org/) 類似，`on` 和 `yes` 會被視為布林值的 `true`，而 `off` 和 `no` 會被當作 `false` 處理。

`unless` 簡單說就是和 `if` 相反。

你能夠用 `@property` 當作 `this.property` 的縮寫。

你可以用 `in` 來測試陣列裡是否有某個值，然後 `of` 來測試物件中是否有某個屬性。

在 `for` 迴圈裡，`from` 會被編譯成 [ES2015 的 `of`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of)。（對，很不幸地；當初設計 CoffeeScript 時的 `of` 跟 ES2015 的 `of` 名稱相衝。）

欲簡化數學表達式，`**` 可以用來乘冪，而 `//` 用來整除。`%` 跟 JavaScript 的沒差異，不過 `%%` 則提供了[「模除」](https://en.wikipedia.org/wiki/Modulo_operation)功能：

```
codeFor('modulo')
```

總而言之，就是這樣：

| CoffeeScript | JavaScript |
| --- | --- |
| `is` | `===` |
| `isnt` | `!==` |
| `not` | `!` |
| `and` | `&&` |
| `or` | `||` |
| `true`, `yes`, `on` | `true` |
| `false`, `no`, `off`&emsp; | `false` |
| `@`, `this` | `this` |
| `a in b` | `[].indexOf.call(b, a) >= 0` |
| `a of b` | `a in b` |
| `for a from b` | `for (a of b)` |
| `a ** b` | `Math.pow(a, b)` |
| `a // b` | `Math.floor(a / b)` |
| `a %% b` | `(a % b + b) % b` |

```
codeFor('aliases')
```
