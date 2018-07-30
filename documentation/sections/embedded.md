## 嵌入式 JavaScript

希望你永遠也不會用到這功能，倘若真有那麼一天，你需要在 CoffeeScript 裡插入原生 JavaScript 用法的話，你可以使用重音符包住那部份的程式碼。

```
codeFor('embedded', 'hi()')
```

透過反斜線脫逸重音符像這樣：`` \`​`` 就會輸出成 `` `​``。

脫逸重音符之前的反斜線會需要更多反斜線：`` \\\`​`` 則會輸出為 `` \`​``。

```
codeFor('embedded_escaped', 'markdown()')
```

你也能透過三個重音符來建立嵌入區塊。這樣你就不用整天脫逸重音符。

```
codeFor('embedded_block', 'time()')
```
