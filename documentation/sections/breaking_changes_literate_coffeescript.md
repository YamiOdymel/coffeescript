### 文學式 CoffeeScript 解析

CoffeeScript 2 的文學式解析器已經以更嚴謹的模式被重寫成盡可能地不要將縮排清單作為程式碼區塊看待；但這同時表示程式碼區塊與正常的段落文字需要相隔至少一行。

程式碼區塊需要有明確的縮排方式，例如 1 個 Tab（或者是 2 個空格甚至 4 個都可以）。

如果你希望有個程式碼區塊是作為註釋而不該被納入執行範圍內，那麼該程式碼區塊就必須要有一行（通常是開頭第一行）是沒有縮排的。