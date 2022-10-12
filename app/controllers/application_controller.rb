class ApplicationController < ActionController::Base
    rss_feed = "https://photojournal.jpl.nasa.gov/rss/targetFamily/Earth"

    html = URI.open(rss_feed)

    doc = Nokogiri::XML(html)

    doc.search('item').each do |item|
        guidpi = item.search('guidPI').text
        if !Post.exists?(guidpi: guidpi)
            title = item.search('titleText').text
            description = item.search('descriptionText').text
            link = item.search('link').text
            spacecraft = item.search('spacecraft').text
            instrument = item.search('instrument').text
            full_image = item.search('hiresTiff').text
            image = item.search('hiresJpeg').text
            mission = item.search('mission').text

            Post.new(
                guidpi: guidpi, 
                title: title, 
                description: description, 
                link: link, 
                spacecraft: spacecraft, 
                instrument: instrument,
                full_image: full_image,
                image: image,
                mission: mission
            ).save 

        end
    end
end
