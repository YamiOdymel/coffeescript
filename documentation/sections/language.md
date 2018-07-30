## 語言概要

_這份概要的組成結構讓你能夠從上閱讀至下逐一學習，而後續的章節都會基於先前所提到的觀念。在接下來的範例中，左側的區塊是 CoffeeScript 原始碼，而右側則是編譯後的 JavaScript 程式碼。_

_多數的範例都可以透過按下右方的_ <small>▶</small> _按鈕來執行。左側的 CoffeeScript 都是可以即時編輯的。當然，右側的 JavaScript 也會依照你的編輯做即時更新。_

首先你要知道的是：CoffeeScript 使用空格來作為判斷程式碼區塊的依據。你不需要透過 `;` 分號來結束表達式或斷句（雖然有時候要將多行表達式縮成一行時會用上）。比起用上 `{ }` 花括號來包覆[函式](#literals)、[條件式](#conditionals)、[選擇](#switch)、[嘗試／捕捉](#try)區塊，你真正該用的是空白縮排。

當你正要傳遞參數到函式的時候不一定需要括號，下面這個寫法會不斷地幫你自動包覆變數。<br>
`console.log sys.inspect object` → `console.log(sys.inspect(object));`
