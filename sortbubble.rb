# timesで再作成
numbers = [3, 1, 2, 5, 11, 4, 10, 7, 8, 6]
counts = numbers.size
counts.times do
  n = 1
  (counts - n).times do
    if numbers[n - 1] > numbers[n]
      numbers[n - 1], numbers[n] = numbers[n], numbers[n - 1]
    end
    n += 1
  end
end
p numbers

# Loop処理でソートバブル(オリジナル)
numbers = [3, 1, 2, 5, 11, 4, 10, 7, 8, 6]
counts = numbers.size
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


