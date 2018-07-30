## 解構賦值

和 JavaScript（從 ES2015 開始）一樣的是，CoffeeScript 也支援解構賦值語法。當你試圖賦予一個陣列或物件某個值時，CoffeeScript 會試圖拆解值的內容，並且將右側的值賦予到左側。最直接的範例莫過於此：

```
codeFor('parallel_assignment', 'theBait')
```

想要重新命名函式回傳的多值內容也可以變得很簡單。

```
codeFor('multiple_return_values', 'forecast')
```

解構賦值不僅支援單層，還支援巢狀式的結構。這讓你能夠在解構極具深度的物件內容時得心應手。

```
codeFor('object_extraction', 'name + "-" + street')
```

然後你也可以在解構賦值時用上展開語法。

```
codeFor('patterns_and_splats', 'contents.join("")')
```

展開語法也可以省略變數名稱，這樣就可以在解構陣列的時候只取得起首和尾部的元素。

```
codeFor('expansion', 'first + " " + last')
```

初始化一個類別的時候，其建構子也能用上解構賦值來直接將接收到的選項解構成類別中的選項並保存。

```
codeFor('constructor_destructuring', 'tim.age + " " + tim.height')
```

上面的範例同時也展示了：當解構的物件中缺少了某個屬性的時候，要如何自動補上預設值。不過有點該注意的是：預設值只會在屬性是 `undefined` 或者是無定義的時候才會套用─當該屬性為[`null` 的時候則其值會保留為 `null`](#breaking-changes-default-values)，而非採用預設值。