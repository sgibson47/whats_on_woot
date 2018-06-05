class WhatsOnWoot::Deal
  attr_accessor :product, :price

  @@all =[]

  def self.all
    @@all
  end

  def display_details
    puts "\n"
    puts "#{self.product}"
    puts "is on sale for $#{self.price}."
  end 

  deal_1 = self.new
  deal_1.product = "a fancy computer"
  deal_1.price = "$$$$"
  @@all << deal_1

  deal_2 = self.new
  deal_2.product = "a fancy camera"
  deal_2.price = "$$"
  @@all << deal_2

  deal_3 = self.new
  deal_3.product = "a t-shirt"
  deal_3.price = "$"
  @@all << deal_3

end