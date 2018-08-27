### 參數解析與井驚嘆號（`#!`）行列

在 CoffeeScript 1.x 之中，`--` 必須擺放在檔案名稱後面才能夠將 Coffee 腳本作為可執行檔案呼叫，且後面可以擺放欲傳入的參數。不過現在這個方法已經被棄用了，所以比起這麼做：

```bash
coffee [選項] path/to/script.coffee -- [參數]
```

你現在可以直接這樣使用：

```bash
coffee [選項] path/to/script.coffee [參數]
```

雖說被棄用的方法一樣可以使用，但是在以該方式執行後會輸出一行警告訊息。

在非 Windows 的平台上，`.coffee` 檔案內的第一行開頭可以加上井驚嘆號（`#!`）來將其檔案作為可執行檔案。例如說：

```coffee
#!/usr/bin/env coffee

x = 2 + 2
console.log x
```

如果這個檔案被儲存為 `executable.coffee`，那麼就可以透過下列指令來執行：

```bash
▶ chmod +x ./executable.coffee
▶ ./executable.coffee
4
```

在 CoffeeScript 1.x 中，原本這麼做會無法接收傳入的參數。有些 macOS 的使用者會將 `#!/usr/bin/env coffee --` 作為檔案的開頭來允許腳本接收參數，但這在 Linux 上卻毫無作用；就算能，也無法解析超過一行以上的參數。雖然說現在仍然可以在開頭加上兩個減號，但在 macOS 上執行時，CoffeeScript 會顯示相關的警告訊息。不過好消息是現在已經不需要那兩個 `--` 減號了，所以直接將腳本的開頭改為 `#!/usr/bin/env coffee` 即可。