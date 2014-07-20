require "test_helper"

class YahooCountriesAndProvincesTest < Test::Unit::TestCase
  def test_get_country_iraq_in_swedish
    assert YahooCountriesAndProvinces::countries("sv").include?("Irak")
  end

  def test_get_minor_outlying_islands_united_states_in_german
    assert YahooCountriesAndProvinces::countries("de").include?("Kleinere Inselbesitzungen der Vereinigten Staaten")
  end

  def test_get_state_baghdad_in_english
    assert YahooCountriesAndProvinces::provinces("Iraq", "en").include?("Baghdad")
  end

  def test_get_state_stockholm_in_arabic
    assert YahooCountriesAndProvinces::provinces("Sweden", "ar").include?("ستوكهولم")
  end
end