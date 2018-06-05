class WhatsOnWoot::CLI
  
  def call
    WhatsOnWoot::Scraper.new.make_deals
    list_deals
    menu
  end

  def list_deals
    puts "\n"
    puts "What's on Woot?".colorize("blue")
    WhatsOnWoot::Deal.all.each_with_index {|deal, i|
      puts "#{i +1}. #{deal.product}".colorize("blue")}
    puts "\n"
  end

  def menu
    puts "Enter a number from the list to get more information".colorize("blue")
    puts "about the corresponding deal, or exit to quit.".colorize("blue")
    
    input = nil 

    while input != "exit"
      input = gets.strip

      if input.to_i > 0 && input.to_i <= WhatsOnWoot::Deal.all.length
        deal = WhatsOnWoot::Deal.all[input.to_i - 1]
        deal.display_details
        puts "\n"
        puts "Enter another number from the list".colorize("blue")
        puts "to get information on another deal.".colorize("blue")
      elsif input == "exit"
        break
      else
        puts "Please enter a number from the list or exit.".colorize("blue")
      end
    end
  end

end