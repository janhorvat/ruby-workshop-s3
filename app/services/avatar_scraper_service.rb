class AvatarScraperService
  URL = "https://mrchriss.github.io"

  def self.fetch_avatar_urls
    site = open(URL)
    doc = Nokogiri::HTML(site)
    doc.css("img").map do |element|
      URL + "/" + element.attr("src")
    end
  end
end