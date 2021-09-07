# require 'byebug'
puts '何本勝負？(press 1 or 3 or 5)'
counts = gets.to_i
until counts.odd?
  puts '奇数を入力してね！何本勝負？(press 1 or 3 or 5)'
  counts = gets.to_i
end
puts "#{counts}本勝負を選びました"
sleep(1)

# 変数と配列、ハッシュの設定
win_counts = 0
lose_counts = 0
random = ['g', 'c', 'p']
janken = { g: "グー", c: "チョキ", p: "パー" }

(1..counts).each do |n|
  puts "#{n}本目"
  puts 'じゃんけん…(press g or c or p)'
  user_select = gets.chomp
  cpu_select =  random.sample
  until user_select == 'g' || user_select == 'c' || user_select == 'p'
    puts 'その手では勝負できないよ！じゃんけん…(press g or c or p)'
    user_select = gets.chomp
  end
  sleep(2)
  puts "CPU...#{janken[cpu_select.to_sym]}"
  puts "あなた...#{janken[user_select.to_sym]}"
  while user_select == cpu_select
    puts 'あいこで…(press g or c or p)'
    user_select = gets.chomp
    cpu_select =  random.sample
    sleep(2)
    puts "CPU...#{janken[cpu_select.to_sym]}"
    puts "あなた...#{janken[user_select.to_sym]}"
  end
  sleep(1)
  
  # 勝敗の条件分岐
  if user_select == 'g' 
    if cpu_select == 'c'
      puts '勝ち！'
      win_counts += 1
    elsif cpu_select == 'p'
      puts '負け！'
      lose_counts += 1
    end
  elsif user_select == 'c'
    if cpu_select == 'p'
      puts '勝ち！'
      win_counts += 1
    elsif cpu_select == 'g'
      puts '負け！'
      lose_counts += 1
    end
  elsif user_select == 'p'
    if cpu_select == 'g'
      puts '勝ち！'
      win_counts += 1
    elsif cpu_select == 'c'
      puts '負け！'
      lose_counts += 1
    end
  end
  sleep(1)
  puts "#{win_counts}勝#{lose_counts}敗"
  sleep(2)
end

# 結果の表示
if win_counts > lose_counts
  result = '勝ち'
elsif win_counts < lose_counts
  result = '負け'
end
puts "#{win_counts}勝#{lose_counts}敗であなたの#{result}"
