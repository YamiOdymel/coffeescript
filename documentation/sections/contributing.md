## 貢獻

我們最喜歡貢獻了！隨你所意的分歧[這個原始碼倉庫](https://github.com/jashkenas/coffeescript)並且建立合併請求吧。

不過[有些 ECMAScript 功能是刻意不支援的](#unsupported)。請確定你想發送的功能在事前是不是[已經被討論過](https://github.com/jashkenas/coffeescript/issues)了。我們遵循一項規則：不要支援任何沒有被正式化的 ECMAScript 語法（在審核階段 4 之前）。

有關更多如何追加功能至 CoffeeScript 的資訊，請查看[維基資料](https://github.com/jashkenas/coffeescript/wiki/%5BHowto%5D-Hacking-on-the-CoffeeScript-Compiler)，尤其是關於[解析器是如何運作的](https://github.com/jashkenas/coffeescript/wiki/%5BHowTo%5D-How-parsing-works)那篇文章。

這裡有幾件事情能夠讓你的合併請求提高被接受的機率：

  * 建立測試！任何合併請求都應該要有基本的測試來確認這項變更沒有破壞主程式、或者未來的異動不會破壞你所寫的程式。
  * 遵循其他人的 CoffeeScript 撰寫風範。
  * 確定 ECMAScript 語法是穩定且正式的（處於審核階段 4），而且未來不會有任何異動。
  * 追加的功能是基於大眾，而不是只為特定用法或框架所設計的。

當然你可能會做出上述清單以外的事情。不過那當然不止你一位，其實野外也有不少的[探險家](https://github.com/jashkenas/coffeescript/wiki/In-The-Wild)。