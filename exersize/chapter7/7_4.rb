def price(item:, size: 'ショート')
  items = { 'コーヒー' => 300, 'カフェラテ' => 400 }
  sizes = { 'ショート' => 0, 'トール' => 50, 'ベンティ' => 150}
  items[item] + sizes[size]
end
p price(item: 'コーヒー', size: 'トール')
p price(item: 'カフェラテ', size: 'ベンティ')
p price(item: 'カフェラテ')

# caseを使う場合
def price(item:, size: 'ショート')
  total = case item
    when 'コーヒー'
      300
    when 'カフェラテ'
      400
    end
  total += case size
    when 'ショート'
      0
    when 'トール'
      50
    when 'ベンティ'
      150
    end
end
p price(item: 'コーヒー', size: 'トール')
p price(item: 'カフェラテ', size: 'ベンティ')
p price(item: 'カフェラテ')
