## JSX

[JSX](https://facebook.github.io/react/docs/introducing-jsx.html) 是能夠帶有類 XML 元素結構的 JavaScript。雖然初期是為了 [React](https://facebook.github.io/react/) 所設計的，但這並不是一個框架或者函式庫。

CoffeeScript 不需要任何的額外擴充套件或設定，就能夠支援類 XML 元素。XML 元素會被編譯並輸出成一般的 JSX 結果，就像 [Babel 與 React JSX 的轉化](https://babeljs.io/docs/plugins/transform-react-jsx/)。不過 CoffeeScript 並 _不會_ 輸出用以呼叫 `React.createElement` 的函式，亦不會有任何與 React 和其他框架有關的程式碼。這部分取決於你的建置鏈要如何轉譯這份 JSX。

就像 JSX 和 HTML 那樣，你可以使用 `<` 與 `>` 符號。你也能在 `{` 和 `}` 標籤中使用 CoffeeScript。為了避免編譯器錯誤，當 `<` 和 `>` 是用作「小於」或「大於」符號時，你應該透過空白來避免它們被誤認為 XML 標籤。所以你該使用 `i < len` 而不是 `i<len`。雖然說編譯器會盡可能地猜測你真正的意圖，但在使用「小於」和「大於」的符號時加上空白還是會令人更安心些。

```
codeFor('jsx')
```

舊的擴充套件或 CoffeeScript 的衍生分歧使用 JSX 語法時通常是 `.csjx` 檔案，但這已經不需要了；一般的 `.coffee` 就可以正常運作。
