require 'net/http'
require 'json'

module YahooCountriesAndProvinces
  class YahooCountryList
    def initialize()
      @country_array = []
    end

    def countries(language = "en")
      set_url(language)

      @country_array.clear if @country_array.any?
      begin
        resp = Net::HTTP.get_response(URI.parse(@url))
        data = resp.body
        result = JSON.parse(data)["query"]["results"]["place"]
      rescue
        raise "Could not get the data from yahoo's servers"
      end

      result.each { |country|
        @country_array << country['name']
      }

      @country_array
    end

    private
    def set_url(language)
      @url = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.countries%20where%20lang%3D%22" + language + "%22&format=json&callback="
    end
  end
end