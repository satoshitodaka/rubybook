class Item
  def initialize
    p '商品を扱うオブジェクト'
  end
end
item = Item.new
p item

class Item
  def initialize(text)
    @name = text
  end
  def name
    @name
  end
end
item1 = Item.new('マフィン')
p item1.name
item2 = Item.new('スコーン')
p item2.name