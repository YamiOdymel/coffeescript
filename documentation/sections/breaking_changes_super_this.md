### `super` 和 `this`

在一個衍生類別（使用 `extends` 繼承的類別）的建構子中，`this` 不能比起 `super` 還要早使用：

```coffee
class B extends A
  constructor: -> this  # 會拋出編譯器錯誤異常
```

這意味著在衍生類別的建構子內，你也不能夠將 `this` 以參數的方式賦予給 `super`：

```coffee
class B extends A
  constructor: (@arg) ->
    super @arg  # 會拋出編譯器錯誤異常
```

這些是來自於 ES2015 類別的先天限制。如果要繞過這個限制，請試著在呼叫 `super` 之後賦予 `this`：

```
codeFor('breaking_change_super_this')
```
