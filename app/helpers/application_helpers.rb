require 'json'
require 'uri'
require 'iso_country_codes'

module ApplicationHelpers
  CONTINENT_CODES = {
      'AF' => 'Africa',
      'AS' => 'Asia',
      'EU' => 'Europe',
      'NA' => 'North America',
      'OC' => 'Oceania',
      'SA' => 'South America'
  }

  def continent_by_code(code)
    CONTINENT_CODES[code]
  end

  def country_by_code(code)
    country = IsoCountryCodes.find(code)
    country.name unless country.nil?
  end

  def url_encode(string)
    URI.escape(string.downcase)
  end

  def url_decode(string)
    URI.unescape(string.downcase)
  end

end