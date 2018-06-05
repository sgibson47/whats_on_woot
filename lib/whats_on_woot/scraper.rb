class WhatsOnWoot::Scraper
  attr_accessor :deals

  def initialize
    @deals =[]
  end
  
  def get_page(url)
    Nokogiri::HTML(open(url))
  end

  def scrape_pages
    scrape_woot
    scrape_home
    scrape_electronics
    scrape_computers
  end 
  
  def scrape_woot
    doc = get_page("https://www.woot.com/")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "https://www.woot.com#{doc.css("p.read-more a.url").attribute("href").value}"
    @deals << deal_hash
  end

  def scrape_home
    doc = get_page("https://www.woot.com/category/home")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "#{doc.css("a.woot-flat-button").attribute("href").value}"
    @deals << deal_hash
  end 

  def scrape_electronics
    doc = get_page("https://www.woot.com/category/electronics")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "#{doc.css("a.woot-flat-button").attribute("href").value}"
    @deals << deal_hash
  end

  def scrape_computers
    doc = get_page("https://www.woot.com/category/computers")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "#{doc.css("a.woot-flat-button").attribute("href").value}"
    @deals << deal_hash
  end

  def scrape_tools
    doc = get_page("https://www.woot.com/category/tools")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "#{doc.css("a.woot-flat-button").attribute("href").value}"
    @deals << deal_hash
  end

  def scrape_sport
    doc = get_page("https://www.woot.com/category/sport")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "#{doc.css("a.woot-flat-button").attribute("href").value}"
    @deals << deal_hash
  end

  def scrape_wine
    doc = get_page("https://www.woot.com/category/wine")
    
    deal_hash ={}
    
    deal_hash[:product] = doc.css("h2.main-title.fn").text
    deal_hash[:price] = doc.css("span.price").text
    deal_hash[:url] = "#{doc.css("a.woot-flat-button").attribute("href").value}"
    @deals << deal_hash
  end
end