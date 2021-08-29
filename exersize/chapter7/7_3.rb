def order(drink)
  "#{drink}をください"
end
p order('カフェラテ')

def dice
  [1, 2, 3, 4, 5, 6].sample
end
result = dice
p result
if result == 1
  p 'もう1回！'
  p dice
end
