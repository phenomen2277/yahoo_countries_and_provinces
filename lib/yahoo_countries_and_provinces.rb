require "yahoo_countries_and_provinces/version"
require "yahoo_countries_and_provinces/yahoo_country_list"
require "yahoo_countries_and_provinces/yahoo_province_list"


module YahooCountriesAndProvinces
  def self.countries(language="en")
    c = YahooCountriesAndProvinces::YahooCountryList.new
    c.countries(language)
  end

  def self.provinces(country, language="en")
    p = YahooCountriesAndProvinces::YahooProvinceList.new
    p.provinces(country, language)
  end
end
