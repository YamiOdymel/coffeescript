## 模組系統

CoffeeScript 支援 ES2015 的模組，其 `import` 和 `export` 的使用方法都非常相似：

```
codeFor('modules')
```

<div id="modules-note" class="bookmark"></div>

不過要注意的是 CoffeeScript 編譯器並不會幫你**解析相關模組**；在 CoffeeScript 裡撰寫 `import` 或 `export` 只會產生有關 `import` 和 `export` 的結果。你需要自行結合相關的轉譯介面或建置工具，例如 [Traceur Compiler](https://github.com/google/traceur-compiler)、[Babel](http://babeljs.io/) 或 [Rollup](https://github.com/rollup/rollup) 來將 ES2015 的模組用法轉譯成真的引用相關模組的程式碼。

還有一點，那就是任何有使用到 `import` 或 `export` 的檔案都會自動移除[安全作用域](#lexical-scope)，這原本能確保每個檔案擁有自己的作用域而不會和其他檔案相衝；換句話說，只要在程式碼裡有輸入或輸出的用法，就會觸發[暴露](#usage)模式。因為 ES2015 的規範強迫 `import` 或 `export` 必須在最頂域中宣告。
