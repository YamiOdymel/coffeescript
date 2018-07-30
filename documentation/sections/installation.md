## 安裝方法

終端機版本的 `coffee` 指令現在需要 [Node.js](https://nodejs.org/) 為輔助工具，且版本需要是 Node 6 或更新的版本。不過[核心編譯器](/v<%= majorVersion %>/browser-compiler/coffeescript.js)則不仰賴 Node。核心可以在任何的 JavaScript 環境中執行，或是直接在網頁瀏覽器中運作（請查看[嘗試 CoffeeScript](#try)）。

欲要進行安裝，須先確保你有安裝最新版的 [Node.js](https://nodejs.org/)。然後你就能夠透過 [npm](https://www.npmjs.com/) 來安裝 CoffeeScript：

```bash
npm install --global coffeescript
```

這讓你能夠在全域終端機中使用 `coffee` 和 `cake` 指令。

如果你正打算在專案中使用 CoffeeScript，那麼你應該以下列方式來安裝、並令 CoffeeScript 成為專案中的相依性套件。請在專案資料夾中輸入指令：

```bash
npm install --save-dev coffeescript
```

使用 `coffee` 和 `cake` 指令時，會先自動檢查目前資料夾中是否有安裝 CoffeeScript，若有，則使用目前資料夾的版本（若無，則使用全域安裝的版本）。這允許你在不同的專案上使用不同版本的 CoffeeScript 以避免相依性問題。

如果你打算使用 `--transpile` 選項（請查看[轉譯介面](#transpilation)章節），你將需要以全域、本地方式安裝 `babel-core`，這取決於你使用的 CoffeeScript 是全域還是目前資料夾中的版本。