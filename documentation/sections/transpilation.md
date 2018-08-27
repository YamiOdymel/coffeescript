### 轉譯介面

CoffeeScript 2 會輸出最新的 JavaScript 語法，但執行緒或瀏覽器[不一定會支援這些用法](#compatibility)。在這種時候我們會希望將現代 JavaScript 程式碼轉譯成較舊的語法，這樣才能夠在過時的 Node 或瀏覽器上執行；例如說：`{ a } = obj` 轉譯成 `a = obj.a`。而這可以透過 [Babel](http://babeljs.io/)、[Bublé](https://buble.surge.sh/) 或 [Traceur Compiler](https://github.com/google/traceur-compiler) 轉譯器達成。

#### 快速開始

先從專案的根目錄開始下手：

```bash
npm install --save-dev babel-core babel-preset-env
echo '{ "presets": ["env"] }' > .babelrc
coffee --compile --transpile --inline-map some-file.coffee
```

#### CoffeeScript 編譯器搭配轉譯介面

為了讓事情更簡單點，CoffeeScript 內建了能夠支援 [Babel](http://babeljs.io/) 轉譯器的功能。你可以透過 `--transpile` 指令列選項或者 Node API 的 `transpile` 選項來使用。要使用這項功能，專案中必須先要有安裝 `babel-core`：

```bash
npm install --save-dev babel-core
```

如果你是在專案資料夾外執行 `coffee` 指令的話，可以使用全域安裝的 `coffeescript` 模組。這個時候也就需要全域安裝的 `babel-core` 模組：

```bash
npm install --global babel-core
```

預設來說，Babel 本身什麼事情也不會做，他也不會鳥你想轉譯成什麼格式的程式碼。為了解決這傲嬌的問題，你必須提供一個設定檔讓他正常運作，而主要的方式就是在欲編譯的檔案資料夾裡建立一個 [`.babelrc` 檔案](https://babeljs.io/docs/usage/babelrc/)（或者父資料夾也行），Babel 也支援[其他方式](https://babeljs.io/docs/usage/babelrc/)就是了。一個最基本的 `.babelrc` 檔案會有 `{ "presets": ["env"] }` 內容。在這之前你必須先安裝最基本的 [`babel-preset-env`](https://babeljs.io/docs/plugins/preset-env/) 配置環境檔案：

```bash
npm install --save-dev babel-preset-env  # 在沒有明顯區分專案的情況下可以用上 --global 選項
```

拜訪 [Babel 的網站能夠讓你學到關於配置環境檔案和擴充插件](https://babeljs.io/docs/plugins/)的相關知識。當你需要用上 JSX 和 React 時，你會需要 [`transform-react-jsx`](https://babeljs.io/docs/plugins/transform-react-jsx/) 配置環境檔案（雖然 JSX 也可以和其他框架一同使用啦）。

當你有安裝 `babel-core` 和 `babel-preset-env`（或其他配置環境檔案）且已經設定好 `.babelrc`（相關的設置）時，就可以開始使用 `coffee --transpile` 指令來將 CoffeeScript 的輸出結果銜接到 Babel 並以你所設置的選項來進行轉譯。

如果你是透過 [Node API](nodejs_usage) 使用 CoffeeScript 的話，則需要在呼叫 `CoffeeScript.compile` 的時候在 `options` 選項物件部分的 `transpile` 屬性設置 Babel 的選項：

```js
CoffeeScript.compile(code, {transpile: {presets: ['env']}})
```

將 CoffeeScript 納入建置鏈就能夠不需要用上 `transpile` 設置來轉譯 CoffeeScript 的輸出內容。這讓你能夠使用 Babel 以外的轉譯器，通常要達到這樣的效果可以使用現有的 JavaScript 建置鏈工具。例如：[Gulp](http://gulpjs.com/)、[Webpack](https://webpack.github.io/)、[Grunt](https://gruntjs.com/) 或 [Broccoli](http://broccolijs.com/)。

#### Polyfill

該注意的是轉譯並不會自動幫妳解決某些最根本的 [Polyfills](https://developer.mozilla.org/en-US/docs/Glossary/Polyfill) 相容性問題。CoffeeScript 會在你使用 `in` 語法時自動輸出成 [`Array.indexOf`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf) 或者解構和展開運算子；而在類別中用上胖箭頭（`=>`）時則會輸出成 [`Function.bind`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind)。兩者都在 Internet Explorer 9+ 和多數瀏覽器上獲得支援，但是如果你要讓他們在 Internet Explorer 8 或是更舊的瀏覽器中能夠正常執行，就會需要透過 Polyfills 解決這些問題。當你自己在程式中用上類似的語法時，也依然需要這麼做。而有個能解決 Polyfill 的方法就是安裝 [`babel-polyfill`](https://babeljs.io/docs/usage/polyfill/)（雖然還有[其他](https://hackernoon.com/polyfills-everything-you-ever-wanted-to-know-or-maybe-a-bit-less-7c8de164e423)、[不同](https://philipwalton.com/articles/loading-polyfills-only-when-needed/)的方式就是了）。