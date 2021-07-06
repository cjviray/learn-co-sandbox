class NbaStats::CLI
  
  def call 
    list_stat
    menu
    goodbye 
  end 
  
  def list_stat
    puts "NBA stats:"
    @stats = NbaStats::Stat.today
  end 
  
  def menu
    input = nil 
    while input != "exit"
    puts "Enter number to choose stat or type 'exit':"
    input = gets.strip.downcase
      case input
      when "1"
        puts "Points stat leaders:"
      when "2"
        puts "Rebounds stat leaders:"
      when "3"
        puts "Assists stat leaders:"
      when "4" 
        puts "Steals stat leaders:"
      when "5"
        puts "Blocks stat leaders:"
      when "list"
        list_stat
      else
        puts "Invalid. Type 'list' or 'exit'"
      end 
    end 
  end 
  
  def goodbye
    puts "Goodbye"
  end
  
end 