menu = {coffee: 300, caffe_latte: 400}
menu[:tea] = 300
p menu

menu.delete(:coffee)
p menu

if menu[:tea] == nil
  p '紅茶はありませんか？'
end

if menu[:caffe_latte] < 500
  p 'カフェラテください'
end


hash = {}
hash.default = 0
array = 'cafelatte'.chars
array.each do |i|
  hash[i] += 1
end
p hash