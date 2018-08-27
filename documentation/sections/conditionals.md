## If、Else、Unless 與條件判斷式

`if`/`else` 條件判斷式撰寫的時候可以省略大括號和弧形括號。就像函式跟其他的區塊表達式一樣，只要是單行以上的條件式內容都是用對齊來搞定。順帶一提的是：你能夠把 `if` 跟 `unless` 放在最後面以便符合英文的文法。

CoffeeScript 可以將 `if` 條件判斷式轉換成 JavaScript 的表達式，並在可以的時候轉換成三元運算子（Ternary）；不然就以正常的大括號包覆處理。不過在 CoffeeScript 中沒有具體的三元運算子用法，使用單行的 `if` 條件判斷式即可。

```
codeFor('conditionals')
```
