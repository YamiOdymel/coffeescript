# 你的瀏覽器必須支援 async/await 和文字朗讀程式
# 才能夠正常執行此範例。

sleep = (ms) ->
  new Promise (resolve) ->
    window.setTimeout resolve, ms

say = (text) ->
  window.speechSynthesis.cancel()
  window.speechSynthesis.speak new SpeechSynthesisUtterance text

countdown = (seconds) ->
  for i in [seconds..1]
    say i
    await sleep 1000 # 等個一秒
  say "Blastoff!"

countdown 3
