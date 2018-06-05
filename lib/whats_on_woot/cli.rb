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
    
    input = nil 

    while input != "exit"
      input = gets.strip

      if input == "1"
        puts "more info on deal 1"
      elsif input == "2"
        puts "more info on deal 2"
      elsif input == "3"
        puts "more info on deal 3"
      elsif input == "exit"
        break
      else
        puts "Please enter a number from the list or exit."
      end
    end
  end

end