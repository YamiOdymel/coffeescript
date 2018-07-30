## 所有東西都是表達式（差不多啦）

你也許會注意到為什麼 CoffeeScript 的函式最終都不用加個回傳陳述式，但函式卻還是會有回傳值。其實 CoffeeScript 會試圖將所有語句視為表達式。看好下面的範例，其函式的任何一項內容都會盡可能地加上回傳陳述式。

```
codeFor('expressions', 'eldest')
```

雖然說函式最終都會自動回傳其值，但我們還是鼓勵你：當函式該結束的時候就自己直接手動加上回傳（`return value`）陳述式來結束函式。

對了，連沒有定義過的變數也可以直接當成表達式邊宣告邊使用。

```
codeFor('expressions_assignment', 'six')
```

在 JavaScript 必須是陳述式的東西，CoffeeScript 能夠將其以閉包函式包覆著並且當成表達式使用並賦值給某個變數：

```
codeFor('expressions_comprehension', 'globals')
```

還有個很有趣的是：像 `try` 和 `catch` 可以直接被塞進一個函式呼叫中進行使用。

```
codeFor('expressions_try', true)
```

不過仍有許多無法轉換成表達式的 JavaScript 陳述式（例如：`break`、`continue`、`return`）。所以當你要用上他們當作表達式的時候，CoffeeScript 可沒辦法幫你。