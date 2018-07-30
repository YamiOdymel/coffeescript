## 選擇／當／不然

`switch` 陳述式在 JavaScript 不得不說是有點尷尬。因為你必須在每個 `case` 條件分句裡的最後加上 `break` 來避免整個程式直接執行到最後一個條件分句。CoffeeScript 決定解決這個窘境，並且允許 `switch` 作為回傳的表達式。其格式為：`switch` 作主體、`when` 為條件分句、`else` 則是預設的處理方法。

就和 Ruby 的寫法差不多，CoffeeScript 的 `switch` 陳述式的單個 `when` 條件分句可以用上多個值。如果符合其中一個值則執行該條件分句的程式碼。

```
codeFor('switch')
```

`switch` 也能夠直接當作值使用，就像更簡潔的 `if / else` 條件鏈。

```
codeFor('switch_with_no_expression')
```
