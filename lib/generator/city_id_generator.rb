require 'httparty'
require 'json'
require 'yaml'

class GeneratorService
  include HTTParty

  def initialize
    @random_city_id_array = YAML.load_file('/Users/tech-a02/Documents/engineering-9/Sparta_openweather_som/city_id.yml')
  end

  def generate_city_id
    @random_city_id = @random_city_id_array.sample
  end

end
