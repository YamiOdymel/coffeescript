# 吃早餐。
eat = (food) -> "#{food} eaten."
eat food for food in ['toast', 'cheese', 'wine']

# 來點甜點。
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
menu = (i, dish) -> "Menu Item #{i}: #{dish}"
menu i + 1, dish for dish, i in courses

# 健康的一餐。
foods = ['broccoli', 'spinach', 'chocolate']
eat food for food in foods when food isnt 'chocolate'
