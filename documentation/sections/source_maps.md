## 原始碼映射表

CoffeeScript 有內建產生原始碼映射表的功能，這能讓你的 JavaScript 引擎得知其執行的語句與原本 CoffeeScript 中的哪行程式碼相符。通常瀏覽器都會自動比對原始碼映射表。使用編譯器時追加 `--map` 或 `-m` 選項就能夠在編譯 JavaScript 結果時一同輸出相對應的原始碼映射表。

有關原始碼映射表的運作原理、如何在瀏覽器中使用，請閱讀 [HTML5 的教學](https://www.html5rocks.com/en/tutorials/developertools/sourcemaps/)。
