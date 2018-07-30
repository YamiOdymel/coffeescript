## `"text/coffeescript"` 腳本標籤

瀏覽器能夠透過網頁中的 `<script type="text/coffeescript">` 腳本標籤來執行 CoffeeScript 程式碼，雖然是不建議將這種方式用於正式場合啦。不過真要這樣做的話，你能夠在這裡[下載最新版本、51 KB 檔案大小（被壓縮）](/v<%= majorVersion %>/browser-compiler/coffeescript.js) 的 `docs/v<%= majorVersion %>/browser-compiler/coffeescript.js`。在頁面上引用這個檔案，就能夠執行 CoffeeScript 腳本標籤的程式碼。

不過有個注意事項：你的腳本會被包覆在一個有效範圍保護函式裡，如果你想要暴露全域變數或函式的話，記得將其賦予到 `window` 物件作為屬性。