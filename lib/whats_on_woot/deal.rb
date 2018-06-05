class WhatsOnWoot::Deal
  attr_accessor :product, :price, :url

  @@all =[]

  def self.all
    @@all
  end

  def display_details
    puts "\n"
    puts "#{self.product}".colorize(:green)
    puts "is on sale for #{self.price}.".colorize(:green)
    puts "Check it out here:".colorize(:green)
    puts "#{self.url}".colorize(:green)
  end 

  def self.create_from_hash(hash)
    thing = WhatsOnWoot::Deal.new
    hash.each do |k,v|
      thing.send("#{k}=", v)
    end
    @@all<<thing
  end

end