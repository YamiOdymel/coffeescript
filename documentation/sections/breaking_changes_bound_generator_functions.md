### 有界產生器函式

有界產生器函式，簡單說就是：「產生器箭頭函式」在目前是[不被 ECMAScript 允許](http://stackoverflow.com/questions/27661306/can-i-use-es6s-arrow-function-syntax-with-generators-arrow-notation)的。你能夠寫成 `function*` 但卻不能用上 `=>` 符號，所以如果你的程式碼看起來像這樣：

```coffee
f = => yield this
# 會發生編譯器錯誤
```

則必須以更「古老」的方式撰寫：

```
codeFor('breaking_change_bound_generator_function')
```
