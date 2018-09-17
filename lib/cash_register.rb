class CashRegister

  attr_accessor :total, :items, :last_item
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    @items << title
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      discount = (100 - @discount).to_f / 100
      self.total *= discount
      return "After the discount, the total comes to $#{@total.to_int}."
    end
  end
  
  def items
    @items
  end

  def void_last_transaction
    
  end

end