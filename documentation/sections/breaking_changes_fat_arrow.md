### 有界（胖箭頭）函式

在 CoffeeScript 1.x 版本中的 `=>` 符號會被轉換成標準的 `function`，但是其中的 `this`、`@` 會被覆寫成父有效範圍的 `this` 或是以 `.bind` 函式來綁定相關界線（所以也叫「有界函式」）。但在 CoffeeScript 2 有了大改變，現在的 `=>` 會被編譯成 [ES2015 的 `=>`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)，所以這和以前有非常大的不同。最主要的衝擊莫過於 ES2015 的 `=>` 函式不會有 `arguments` 物件。

```
codeFor('breaking_change_fat_arrow', 'outer(1, 2)')
```