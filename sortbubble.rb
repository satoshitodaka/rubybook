numbers = [3, 1, 2, 5, 11, 4, 10, 7, 8, 6]
counts = numbers.size - 1
loop do
  # 処理前の配列の複製を保存
  before_process = numbers.dup
  n = 0
  counts.times do
    if numbers[n] > numbers[n+1]
      left_number = numbers[n]
      right_number = numbers[n+1]
      numbers[n] = right_number
      numbers[n+1] = left_number
    end
    n += 1
  end
  # 処理前と処理後の配列が同一であれば終了する
  break if numbers == before_process
end
puts numbers

