 class DailyDeal::CLI

  def call 
    list_deals
    menu
    goodbye
  end 

  def list_deals
    puts "Today's daily deals: "
    @deals = DailyDeal::Deal.today 
  end 
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter number for selected deal or exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        puts @deals[input.to_i-1]
      elseif input == "list"
        list_deals
      else
        puts "Not sure what you want. Type list or exit:"
      end 
    end 
  end 
  
  def goodbye
    puts "See you tomorrow for new deals!"
  end 
  
end 