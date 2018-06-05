class WhatsOnWoot::Deal
  attr_accessor :product, :price

  deal_1 = self.new
  deal_1.product = "a fancy computer"
  deal_1.price = "$$$$"

  deal_2 = self.new
  deal_2.product = "a fancy camera"
  deal_2.price = "$$"

  deal_3 = self.new
  deal_3.product = "a t-shirt"
  deal_3.price = "$"

end