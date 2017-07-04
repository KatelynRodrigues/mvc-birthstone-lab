require "json"
require "net/http"

def choose_gem(month)
    monthInfo = {
        :Select => ["invalid month. Try again."],
        :January => ["January's gem stone is the GARNET." , "http://www.fotolip.com/wp-content/uploads/2016/06/january-birthstone_5763268ae0fa0.jpg"],
        :February => ["February's gem stone is AMETHYST." , "http://2.bp.blogspot.com/-FkKl-v3TRzk/VX2oUJIKbtI/AAAAAAAAHFs/a0x51STZzKg/s1600/february-birthstone-amethyst-2.jpg"],
        :March => ["March's gem stone is AQUAMARINE." , "https://s-media-cache-ak0.pinimg.com/originals/83/99/a0/8399a0a00015218d1b3e6a6657dd3ed6.jpg"],
        :April => ["April's gem stone is DIAMOND." , "http://www.lapigems.com/images/upload/articles/April-Birthstone-Diamond.png"],
        :May => ["May's gem stone is EMERALD" , "http://www.martinbinder.com/media/wysiwyg/may_birthstone.jpg"],
        :June => ["June's gem stone is ALEXANDRITE" , "http://www.americangemsociety.org/Content/uploads/June-Trifecta.jpg"],
        :July => ["July's gem stone is RUBY" , "https://s-media-cache-ak0.pinimg.com/736x/e8/70/55/e87055c69ae8cf0005e0183f78f72300.jpg"],
        :August => ["August's gem stone is PERIDOT" , "https://www.anjolee.com/blog/wp-content/uploads/2016/04/peridot_f-1024x535.jpg"],
        :September => ["September's gem stone is SAPPHIRE" , "http://www.cerijewelry.com/blog/wp-content/uploads/2015/09/September-Birthstone-Jewelry.jpg"],
        :October => ["October's gem stones are TOURMALINE and OPAL" , "http://www.lapigems.com/images/upload/articles/October-Birthstone.png"],
        :November => ["November's gem stone is TOPAZ" , "http://goodlucksymbols.com/wp-content/uploads/2015/11/November-Birthstone.jpg"],
        :December => ["December's gem stone is Turquoise" , "https://static1.squarespace.com/static/53edf41fe4b0a8db2092e1a1/t/581cf3a51b631b164225d9a0/1478292391201/Dec-Turquoise_456-73345_450x282.png"]
    } 
    return monthInfo[month.to_sym]
end

#gif finder 
 def getGif(searchTerm)
   requestString = "http://api.giphy.com/v1/gifs/search?q=#{searchTerm.gsub(" ", "+")}&api_key=dc6zaTOxFJmzC"
   sampleUri = URI(requestString)
   sampleResponse = Net::HTTP.get(sampleUri)
   sampleParsedResponse = JSON.parse(sampleResponse)
   sampleParsedResponse["data"][0]["images"]["fixed_height"]["url"]
   
  end
  
puts getGif("hilarious pistachios")
