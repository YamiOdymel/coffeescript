### `let` 與 `const`：最小區塊有效範圍與重新賦值保護

當初設計 CoffeeScript 的時候，`var` 用法是很明顯地[被忽略的](https://github.com/jashkenas/coffeescript/issues/238#issuecomment-153502)。這讓開發者不需要搞得像整天在做家事一樣，煩惱變數該在何時 _定義_（`var foo`）。不過也因為 CoffeeScript 會自動產生 `var` 陳述式來幫你照料變數的定義，也就不會不小心定義到一個全域變數。

`let` 與 `const` 的出現讓你能在 JavaScript 中以 _區塊_ 作為有效範圍來定義變數的生命，例如說其定義的範圍只會在 `if` 陳述式裡或 `for` 迴圈區塊中，而 `var` 的有效範圍通常會大到一整個函式。起初 CoffeeScript 2 社群也不斷地在討論這個問題，例如：是否有必要追加更多的有效範圍定義方式。最終，我們決定繼續簡化這項功能，讓開發者更著重於程式上。所以 CoffeeScript 仍然只有一種變數有效範圍。

要注意的是 `const` 雖然能夠預防你重新賦值；但他卻沒有預防你更改變數的內容，這和其他程式語言倒是不太一樣：

```js
const obj = {foo: 'bar'};
obj.foo = 'baz'; // 你竟然可以這樣做！
obj = {}; // 會拋出錯誤
```
