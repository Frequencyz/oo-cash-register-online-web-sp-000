class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
     quantity.times do 
      items << title
    end
    self.the_last_transaction = price * quantity
  end
  
  def apply_discount
   self.total = @total - (@total * @discount)/100
   if @discount >0
      return "After the discount, the total comes to $#{@total}."
   else
      return "There is no discount to apply."
   end
  end
   
   def void_last_transaction
    self.total = self.total - self.last_transaction
   end 
end
