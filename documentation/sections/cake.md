## Cake 與 Cakefiles

CoffeeScript 內建了一個和 [Make](http://www.gnu.org/software/make/) 與 [Rake](http://rake.rubyforge.org/) 非常相似的簡易建置系統。我們稱其為 Cake，這能用來建置並且測試 CoffeeScript 相關的程式。工作程序會被定義在一個名為 `Cakefile` 的檔案中，並且能在相同目錄下以 `cake [工作程序名稱]` 來執行。若要輸出一份可用的工作程序與選項列表，只要打上 `cake` 指令就可以了。

工作程序是以 CoffeeScript 來撰寫的，所以你能在 Cakefile 中隨心所欲地用上 CoffeeScript 程式碼。工作程序以一個名稱、說明、與回呼函式組成。而工作程序也能夠從指令列接收額外的選項值，並且在回呼函式中以 `options` 物件來取得其內容。下面範例重現了如何以 Node.js API 來建立一個 CoffeeScript 解析器：

```
codeFor('cake_tasks')
```

如果你希望在執行某個工作程序之前先呼叫另一個程序－例如在 `build` 之前先 `test` 的話，就能夠用上 `invoke` 函式：`invoke 'build'`。Cake 工作程序是以輕量化的方式將 CoffeeScript 程式暴露到指令列使用，所以[別期望能有太多的功能](/v<%= majorVersion %>/annotated-source/cake.html)。如果你需要一些相依性套件或非同步回呼函式，你最好還是乖乖的寫成程式而不是 Cake 工作程序。