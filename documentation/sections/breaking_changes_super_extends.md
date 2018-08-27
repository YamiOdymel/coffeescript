### `super` 和 `extends`

由於語法上的衝突；沒有大括號的 `super` 不再會自動轉發所有的參數。

```coffee
class B extends A
  foo: -> super
  # 會拋出編譯器錯誤異常
```

參數能夠以變參運算子轉發：

```
codeFor('breaking_change_super_with_arguments')
```

或者如果父函式不需要參數，就能夠直接呼叫 `super()`：

```
codeFor('breaking_change_super_without_arguments')
```

CoffeeScript 1.x 允許你透過 `extends` 關鍵字設置函式之間的原型繼承，而 `super` 可以用在基於原型鏈之間的函式：

```coffee
A = ->
B = ->
B extends A
B.prototype.foo = -> super arguments...
# 最後兩行程式碼現在會於 CoffeeScript 2 中拋出異常
```

由於改用 ES2015 的 `extends` 與 `super`，這些關鍵字將無法用於原型鏈函式上。因此上述的範例現在被更改成：

```
codeFor('breaking_change_super_in_non-class_methods_refactor_with_apply')
```

或下面這樣也行：

```
codeFor('breaking_change_super_in_non-class_methods_refactor_with_class')
```
