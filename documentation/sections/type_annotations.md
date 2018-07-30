## 型態註解

你能夠在 CoffeeScript 中以 [Flow](https://flow.org/) 的[註釋型態標記](https://flow.org/en/docs/types/comments/)來撰寫型態檢查：

```
codeFor('type_annotations')
```

CoffeeScript 本身並不會對此有所檢查；在上述所看到的 JavaScript 需要額外透過 Flow 來進行型態驗證。雖然大多數的人都會透過[建置工具](#es2015plus-output)來執行此功能，但以 [CoffeeScript](#cli) 和 [Flow](https://flow.org/en/docs/usage/) 的終端機工具來執行相關的檢查也許是個更簡單的方法。假設你[已經安裝 Flow](https://flow.org/en/docs/install/) 還有[最新的 CoffeeScript](#installation)，那麼你就可以直接在專案的資料夾執行：

```bash
coffee --bare --no-header --compile app.coffee && npm run flow
```

`--bare` 還有 `--no-header` 是很重要的參數！因為 Flow 要求檔案的第一行必須要是 `// @flow` 註解。在建置工具鏈中讓 CoffeeScript 的編譯結果透過記憶體直接傳遞給 Flow 可以有比起這段指令有更快的效能；一個標準的建置工具鏈要能夠監聽 CoffeeScript 的檔案，並且在你儲存檔案時，自動重新編譯然後透過 Flow 來進行型態檢查。

對於 CoffeeScript 和型態檢查的整合如果你有其他的方式，請[建立新的 Issue](https://github.com/jashkenas/coffeescript/issues/new) 來讓我們知道。