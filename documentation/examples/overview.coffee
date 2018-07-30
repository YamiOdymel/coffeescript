# 賦值：
number   = 42
opposite = true

# 條件式：
number = -42 if opposite

# 函式：
square = (x) -> x * x

# 陣列：
list = [1, 2, 3, 4, 5]

# 物件：
math =
  root:   Math.sqrt
  square: square
  cube:   (x) -> x * square x

# 變參：
race = (winner, runners...) ->
  print winner, runners

# 空值偵測：
alert "I knew it!" if elvis?

# 陣列推導：
cubes = (math.cube num for num in list)
