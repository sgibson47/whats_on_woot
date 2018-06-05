class WhatsOnWoot::Deal
  attr_accessor :product, :price, :url

  @@all =[]

  def self.all
    @@all
  end

  def display_details
    puts "\n"
    puts "Here's the deal:".colorize(:green)
    puts "#{self.product}"
    puts "is on sale for #{self.price}."
    puts "Check it out here:".colorize(:green)
    puts "#{self.url}"
  end 

  def self.create_from_hash(hash)
    thing = WhatsOnWoot::Deal.new
    hash.each do |k,v|
      thing.send("#{k}=", v)
    end
    @@all<<thing
  end

end