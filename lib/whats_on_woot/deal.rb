class WhatsOnWoot::Deal
  attr_accessor :product, :price, :url

  @@all =[]

  def self.all
    @@all
  end

  def display_details
    puts "\n"
    puts "#{self.product}"
    puts "is on sale for $#{self.price}."
    puts "Check it out here:"
    puts "#{self.url}"
  end 

  deal_1 = self.new
  deal_1.product = "a fancy computer"
  deal_1.price = "$$$$"
  deal_1.url = "url1"
  @@all << deal_1

  deal_2 = self.new
  deal_2.product = "a fancy camera"
  deal_2.price = "$$"
  deal_2.url = "url2"
  @@all << deal_2

  deal_3 = self.new
  deal_3.product = "a t-shirt"
  deal_3.price = "$"
  deal_3.url = "url3"
  @@all << deal_3

end