# YahooCountriesAndProvinces

A Ruby gem for generating a list of all the countries and provinces using Yahoo's YQL.

## Installation

Add this line to your application's Gemfile:

    gem 'yahoo_countries_and_provinces'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yahoo_countries_and_provinces

## Usage

    #require the file
    require "yahoo_countries_and_provinces"
    
    #To get a list of the countries in english
    country_array = YahooCountriesAndProvinces::countries("en")

    #To get a list of the countries in swedish
    country_array = YahooCountriesAndProvinces::countries("sv")

    #To get Germany's provinces in english
    provinces_array = YahooCountriesAndProvinces::provinces("Germany", "en")


