outer = ->
  inner = => Array.from arguments
  inner()

outer(1, 2)  # 在 CoffeeScript 1.x 中會回傳 ''，而 CoffeeScript 則是 '1, 2'
