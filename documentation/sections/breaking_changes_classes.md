### 類別被編譯成 ES2015 型態

ES2015 的類別有著一些先天上的限制。

例如說類別的建構子如果沒有 `new` 的話就不能正常執行：

```coffee
(class)()
# 會在執行時態拋出 TypeError 異常
```

ES2015 類別中無法用上有界（胖箭頭）函式。話雖如此 CoffeeScript 還是盡可能地越過一些障礙來支援這項功能，但還是有些缺點：

```coffee
class Base
  constructor: ->
    @onClick()      # 這可以正常使用
    clickHandler = @onClick
    clickHandler()  # 這會拋出執行時態錯誤

class Component extends Base
  onClick: =>
    console.log 'Clicked!', @
```

類別方法不能直接透過 `new` 使用（雖然這很罕見）：

```coffee
class Namespace
  @Klass = ->
new Namespace.Klass  # 會在執行時態拋出 TypeError 錯誤
```

由於 ES2015 的類別的先天限制問題，類別中不能有動態方法名稱；除非其動態方法是賦予到類別的原型鏈底下。

```coffee
class A
  name = 'method'
  "#{name}": ->   # 這個方法會被命名為 'undefined'
  @::[name] = ->  # 這可以正常使用；會被賦予到 `A.prototype.method`
```
