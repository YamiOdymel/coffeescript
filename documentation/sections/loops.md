## 迴圈與推導

在 CoffeeScript 裡，多數的迴圈寫法都是以 **推導** 的方式來遍歷整個陣列、物件。推導會被編譯成標準的 `for` 迴圈，且可以選擇性地取得迴圈索引和其現有值。和普通迴圈不一樣的的在於：陣列推導是表達式，這讓你能夠將其迴圈作為值回傳或賦予給某個變數。

```
codeFor('array_comprehensions')
```

陣列推導能夠符合你通常會用上迴圈、`each` 或 `forEach`、`map` 和 `select` 與 `filter` 的地方：<br>
`shortNames = (name for name in list when name.length < 5)`<br>

如果你知道迴圈的起始和結束點在哪裡、或者希望固定迴圈長度的話，就可以替推導來指定一個範圍。

```
codeFor('range_comprehensions', 'countdown')
```

在上述範例中可以看到的是：我們正要將一個陣列推導的結果賦予到變數中，所以 CoffeeScript 會自動收集其迴圈的結果並傳到該變數。雖然說這很方便，但多數時候還是要注意推導有時候可能會因此而自動在某個函式中回傳了不必要的數值，這個時候請記得要在函式底部手動回傳一些像是 `true`、`null` 等資料來避免推導結果被回傳。

如果要在固定長度的陣列推導中跨階，可以使用 `by` 關鍵字，像是：
`evens = (x for x in [0..10] by 2)`

如果你不需要目前遍歷的內容值，你可以直接省略它：
`browser.closeCurrentTab() for [0...count]`

推導也能夠用於物件的鍵名和內容值。透過 `of` 來遍歷一個物件。

```
codeFor('object_comprehensions', 'ages.join(", ")')
```

如果你想要透過 `hasOwnProperty` 這種方式來遍歷並檢查物件的某些屬性（用以避免取得原型鏈底層的屬性），可以用上像是 `for own key, value of object` 的方法。

如果要遍歷一個產生器函式，則是使用 `from` 關鍵字。請參閱[產生器函式](#generator-iteration)。

`while` 是 CoffeeScript 中最底層的迴圈。和 JavaScript 的 `while` 迴圈不太一樣的地方在於你能夠將其當作表達式使用，並且遍歷其內容且將結果作為陣列型態回傳。

```
codeFor('while', 'lyrics.join("\\n")')
```

為了閱讀起來符合相關文法，`until` 關鍵字與 `while not` 是相同的，而 `loop` 也等同於 `while true`。

若要將 JavaScript 的迴圈值傳入其迴圈中的函式，我們通常都會建立閉包函式來確保這個函式所接收到的值、參數是來自於目前的這一個迴圈，避免值被下個迴圈洗刷掉。CoffeeScript 提供了 `do` 關鍵字，這能夠直接將目前的迴圈值、變數自動以閉包的方式傳入迴圈中的函式。

```
codeFor('do')
```
