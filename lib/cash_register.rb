class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction = 0
  end

  def add_item(item, price, quantity = 1)
    @total = total + price*quantity
    quantity.times do
      @items << item 
    end
    @transaction = price*quantity
    @total
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      @total = total*(1-discount*0.01)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
   @items
  end

  def void_last_transaction
    @total = total - @transaction
  end

end