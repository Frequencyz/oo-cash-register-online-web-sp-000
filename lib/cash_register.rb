class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
   self.total = @total - (@total * @discount)/100
   if @discount >0
      return "After the discount, the total comes to $#{@total}."
   else
      return "There is no discount to apply."
   end
  end
 
   def items
     @items = items
   end
   
    
end
