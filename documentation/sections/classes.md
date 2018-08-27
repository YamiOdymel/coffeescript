## 類別

CoffeeScript 1 提供了 `class` 和 `extends` 關鍵字來作為原型鏈函式的糖衣語法。不過在 ES2015 的時候，JavaScript 已經官方地支援了這些關鍵字；所以 CoffeeScript 2 現在會將 `class` 和 `extends` 關鍵字直接編譯成 ES2015 類別。

```
codeFor('classes', true)
```

在方法前新增 `@` 符號可以定義成靜態方法：

```
codeFor('static', 'Teenager.say("Are we there yet?")')
```

最後，類別的定義區塊能夠擺放程式碼，這讓你有更大的自由度在設計一個類別上。在這個區塊中 `this` 會指向到類別自身；所以你就可以透過像 `@屬性: 值` 的方式來定義類別的屬性內容。