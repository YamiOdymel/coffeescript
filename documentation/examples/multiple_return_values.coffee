weatherReport = (location) ->
  # 透過 Ajax 請求來取得天氣資料…
  [location, 72, "Mostly Sunny"]

[city, temp, forecast] = weatherReport "Berkeley, CA"
