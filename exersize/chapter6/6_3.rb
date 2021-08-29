menu = { 'コーヒー' => 300, 'カフェラテ' => 400 }
menu.each do |key, value|
  p "#{key} - #{value}円"
end

menu = { 'コーヒー' => 300, 'カフェラテ' => 400 }
menu.each do |key, value|
  p "#{key} - #{value}円" if value > 350
end

menu2 = {}
menu2.each do |key, value|
  p "#{key} - #{value}円" if value > 350
end

menu = { 'コーヒー' => 300, 'カフェラテ' => 400 }
keys = []
menu.each_key do |key|
  keys.push(key)
end
p keys

# keysメソッドを使って書く
menu = { 'コーヒー' => 300, 'カフェラテ' => 400 }
p menu.keys



