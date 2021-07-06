class DailyDeal::Deal

  attr_accessor :name, :price, :availability, :url

  def self.today
    # I should return a bunch of instances of Deal
    # puts <<-DOC.gsub /^\s*/, ''
    #  1. Shoe
    #  2. Lace
    # DOC
    
    deal_1 = self.new
    deal_1.name = "Granite King Cookware set"
    deal_1.price = "$49"
    deal_1.availability = true
    deal_1.url = "https://meh.com"
    
    deal_2 = self.new
    deal_2.name = "Chromebook"
    deal_2.price = "$354.99"
    deal_2.availability = true
    deal_2.url = "https://www.woot.com/offers/hp-chromebook-x2-2-in-1-tablet-w-keyboard-3?ref=w_cnt_wp_0_1"
    
    [deal_1, deal_2] # by the end I want to return an array of the two deals 
  end 


end 