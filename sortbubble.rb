# timesで作成
numbers = [3, 1, 2, 5, 11, 4, 10, 7, 8, 6]
# debugger
counts = numbers.size
n = 1
# 並び換えA
counts.times do
  # 並び換えB
  narabikae_kaisu = counts - n
  p "並び換え回数:#{narabikae_kaisu}"
  narabikae_kaisu.times do |x|
    p "#{x}番目と#{x + 1}番目の数を比較し、必要があれば並び換える"
    if numbers[x] > numbers[x + 1]
      numbers[x], numbers[x + 1] = numbers[x + 1], numbers[x]
    end
  end
  n += 1
end
p numbers

# Loop処理でソートバブル(オリジナル)
numbers = [3, 1, 2, 5, 11, 4, 10, 7, 8, 6]
loop do
  # 処理前の配列の複製を作成
  before_process = numbers.dup
  n = 1
  (counts - n).times do
    if numbers[n - 1] > numbers[n]
      numbers[n - 1], numbers[n] = numbers[n], numbers[n - 1]
    end
    n += 1
  end
  # 処理前と処理後の配列が同一であれば終了する
  break if numbers == before_process
end
p numbers

# 【理解用】eachメソッドで効率的に処理
numbers = [3, 1, 2, 5, 11, 4, 10, 7, 8, 6]
numssize = numbers.size
(1...numssize).each do |m|
  (0...(numssize - m)).each do |n|
    if numbers[n] > numbers[n + 1]
      numbers[n], numbers[n + 1] = numbers[n + 1], numbers[n]
    end
  end
end
p numbers


