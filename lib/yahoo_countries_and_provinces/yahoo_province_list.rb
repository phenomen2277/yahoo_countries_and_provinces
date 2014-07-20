require 'net/http'
require 'json'

module YahooCountriesAndProvinces
  class YahooProvinceList
    def initialize()
      @states_array = []
    end

    def provinces(country, language = "en")
      set_url(country, language)

      @states_array.clear if @states_array.any?
      begin
        resp = Net::HTTP.get_response(URI.parse(@url))
        data = resp.body
        result = JSON.parse(data)["query"]["results"]["place"]
      rescue
        raise "Could not get the data from yahoo's servers"
      end

      result.each { |state|
        @states_array << state['name']
      }

      @states_array
    end

    private
    def set_url(country, language)
      @url = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.states%20where%20place%3D%22" + country + "%22%20and%20lang%3D%22" + language + "%22&format=json&callback="
    end
  end
end