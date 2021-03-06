class CashRegister
	attr_accessor :total, :discount, :items
	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, price, quantity = 1)
		@price = price
		@quantity = quantity
		self.total += (@price * @quantity)
		@quantity.times {@items << title}
	end

	def apply_discount
		if @discount > 0
			self.total = @total - (@total * (@discount * 0.01)).round
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		self.total -= (@price * @quantity)
		self.items.pop(@quantity)
	end
end
