## 有界（胖箭頭）函式

在 JavaScript 中，`this` 關鍵字會以動態的方式而指向到不同的物件或函式。當你試圖將一個函式當作回呼函式傳入到不同的物件或有效範圍時，原本的 `this` 會因此而異動。如果你對此狀況不太清楚，可以參考這份[數位內容](https://web.archive.org/web/20150316122013/http://www.digital-web.com/articles/scope_in_javascript)來稍微理解一下大概發生了什麼事情。

胖箭頭 `=>` 可以用來定義一個函式並且將其 `this` 固定住。當設計一個像 Prototype 或 jQuery 那樣基於回呼函式的函式庫時，這種做法會十分有用。而且將函式傳入進一個 `each` 疊代器或者像事件監聽器 `on` 的時候都能確保這個函式內的 `this` 都指向原本的地方。

```
codeFor('fat_arrow')
```

如果我們在上述範例中使用 `->` 來定義函式，`@customer` 會被指向到 DOM 中的 `customer` 屬性且該屬性會找不到。這個時候還會試圖呼叫不存在的 `purchase()` 函式而導致錯誤。

胖箭頭可以說是 CoffeeScript 中最多人使用的功能之一，而 ES2015 也在[之後加入](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)了這項功能；所以現在 CoffeeScript 2 會將 `=>` 編譯成 ES 的 `=>`。