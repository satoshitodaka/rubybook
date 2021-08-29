p ['カフェラテ', 'モカ', 'カプチーノ'].sample
lottery = ['大吉', '中吉', '末吉', '凶'].sample
case lottery
when '凶'
  p "今日のあなたの運勢は#{lottery}です！気をつけて過ごしましょう。。。" 
else
  p "今日のあなたの運勢は#{lottery}です！良い1日を！"
end