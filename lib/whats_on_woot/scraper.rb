class WhatsOnWoot::Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://www.woot.com/"))

    binding.pry 
  end

  def scrape_page
    #deal_hash ={}
    
    #deal_hash[:product] = self.get_page.css("h2.main-title.fn").text
    #deal_hash[:price] = self.get_page.css("span.price").text
    #deal_hash[:url] = "https://www.woot.com#{self.get_page.css("p.read-more a.url").attribute("href").value}"
    #deal_hash
  end

end