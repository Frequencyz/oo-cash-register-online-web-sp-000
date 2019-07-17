class CashRegister
  
  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
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
   
   def void_last_transaction
    self.total =  @total - @last_transaction[@last_transaction.length - 1]
   end 
end
