### `get` 與 `set` 關鍵字縮寫語法

用於類別和函式的 `get` 與 `set` 關鍵字目前尚未在 CoffeeScript 中實作。

這主要是為了避免和現有的其他寫法發生衝突，因為 CoffeeScript 裡若要加上類似的前輟關鍵字則會被當成函式呼叫（例如：`get(function foo() {})`）；不過目前有[另一種寫法](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty)，雖然看起來稍微聒噪了些但還是夠用的：

```
codeFor('get_set', 'screen.height')
```
