class WhatsOnWoot::CLI
  
  def call
    list_deals
    menu
  end

  def list_deals
    puts "What's on Woot?"
    Deal.all.each_with_index {|deal, i|
      puts "#{i +1}. #{deal.product}"}
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