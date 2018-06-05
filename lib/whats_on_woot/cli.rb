class WhatsOnWoot::CLI
  
  def call
    list_deals
    menu
  end

  def list_deals
    puts "What's on Woot?"
    puts "\n"
    puts "1. Deal 1"
    puts "2. Deal 2"
    puts "3. Deal 3"
    puts "\n"
  end

  def menu
    puts "Enter a number from the list to get more information"
    puts "about the corresponding deal, or exit to quit."
  end

end