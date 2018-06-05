class WhatsOnWoot::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.woot.com/"))
  end

  def scrape_page
    #deal_hash ={}
    
    #deal_hash[:product] = self.get_page.css("")
  end

end