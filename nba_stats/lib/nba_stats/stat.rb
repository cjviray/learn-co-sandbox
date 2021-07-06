class NbaStats::Stat

  attr_accessor :points, :rebounds, :assists, :steals, :blocks, :url
  
  def self.today
    # I should return a bunch of instances of stats 
    puts <<-DOC.gsub /^\s*/, ''
      1. Points
      2. Rebounds
      3. Assists
      4. Steals
      5. Blocks 
    DOC
    
    stat_points = self.new
    stat_points.name_1 = 24 
    stat_points.name_2 = 5
    stat_points.name_3 = 5
    stat_points.name_4 = 1.7
    stat_points.name_5 = 1
    stat_points.url = "https://www.espn.com/nba/stats"

    [stat_points]
  end 

  

end