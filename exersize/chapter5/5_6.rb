number = [1, 2, 3].map do |n|
  n * 3
end
p number

hoge = ['abc', 'xyz'].map do |i|
  i.reverse
end
p hoge

cats = ['aya', 'achi', 'Tama'].map do |i|
  i.downcase
end
p cats.sort