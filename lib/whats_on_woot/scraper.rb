class WhatsOnWoot::Scraper
  attr_accessor :deals

  def initialize
    @deals =[]
  end
  
  def get_page(url)
    Nokogiri::HTML(open(url))
  end

  
  def scrape_woot
    doc = get_page("https://www.woot.com/")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "https://www.woot.com#{doc.css("p.read-more a.url").attribute("href").value}"
    @deals << deal_hash
  end

end