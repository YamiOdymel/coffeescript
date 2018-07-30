### 相容性

CoffeeScript 所支援的 JavaScript 功能近乎都可以直接在 Node 7.6+ 執行，這意味著 Node 可以直接執行 CoffeeScript 所輸出的程式碼且不需要任何其他動作。話雖如此，這裡還是有幾點需要注意的事項：

*  [模組系統](#modules)和 [JSX](#jsx) 需要有轉譯介面（Transpilation）。
*  [變參、物件展開符號](https://coffeescript.org/#splats) 需要 Node 8.6+ 版本。
*  [正規表達式的 `s` 標記](https://github.com/tc39/proposal-regexp-dotall-flag) 則需要 Node 9+ 版本。
*  [異步產生器函式](https://github.com/tc39/proposal-async-iteration) 需要 Node 10+ 版本。

這份清單可能不是很完整，有關更詳細的功能支援度請參閱 [node.green](http://node.green/) 網站。你可以在[瀏覽器中執行這些測試](test.html)來得知你的瀏覽器支援哪些功能。畢竟確保瀏覽器可以執行哪些東西是你的重責大任；或者你也能用上[轉譯介面](#transpilation)。如果你有疑問找上轉譯介面準沒錯。