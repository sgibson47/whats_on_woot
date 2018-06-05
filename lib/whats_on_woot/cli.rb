class WhatsOnWoot::CLI
  
  def call
    list_deals
    menu
  end

  def list_deals
    puts "What's on Woot?"
    WhatsOnWoot::Deal.all.each_with_index {|deal, i|
      puts "#{i +1}. #{deal.product}"}
    puts "\n"
  end

  def menu
    puts "Enter a number from the list to get more information"
    puts "about the corresponding deal, or exit to quit."
    
    input = nil 

    while input != "exit"
      input = gets.strip

      if input.to_i > 0 && input.to_i <= WhatsOnWoot::Deal.all.length
        deal = WhatsOnWoot::Deal.all[input.to_i - 1]
        puts "#{deal.product}"
        puts "#{deal.price}"
      elsif input == "exit"
        break
      else
        puts "Please enter a number from the list or exit."
      end
    end
  end

end