## 文學式 CoffeeScript

除了以普通的方式將 CoffeeScript 當作程式語言看待，CoffeeScript 還能夠用另一種很優雅的「文學」模式進行撰寫。如果你將檔案副檔名命名為 `.litcoffee` 的話，你就能夠撰寫出基於 Markdown 格式的文件－而這文件中的 CoffeeScript 程式碼同時也能夠被執行。編譯器會試圖將縮排區塊（Markdown 的程式碼區塊格式）當作可供執行的程式碼，並且忽略其他文字部分。程式碼區塊與正常的段落文字需要相隔至少一行。

讓你用不同角度看看這有多炫砲：以[文件的方式觀看](https://gist.github.com/jashkenas/3fc3c1a8b1009c00d9df)、[原生內容](https://raw.githubusercontent.com/jashkenas/coffeescript/master/src/scope.litcoffee)、而且還能[在編輯器中正常渲染定義顏色](http://cl.ly/LxEu)。

這裡有幾點該注意：

* 程式碼區塊需要注意其縮排。當編譯器解析你的文學式 CoffeeScript 檔案時，首先會刪除所有非程式碼區塊的文字，然後將剩下的部分當作一般的 CoffeeScript 檔案處理。所以這就表示你需要好好地注意程式碼區塊的縮排（無論是 Tab 或空白）。
* 清單項目和引用區塊內的程式碼不會被當作可供執行的程式碼內容。因為清單和引用區塊有自己的縮排格式，這會影響程式碼原本的縮排而導致無法執行或是誤判。
* 清單項目只能有一個段落。因為第二行段落通常會換行而其縮排會被當作是程式碼區塊而難以區分。