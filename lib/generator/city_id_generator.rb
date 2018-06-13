require 'httparty'
require 'json'
require 'yaml'

class GeneratorService
  include HTTParty

  def initialize
    @random_city_id_array = YAML.load_file('/Users/tech-a02/Documents/engineering-9/Sparta_openweather_som/lib/generator/city_id.yml')

    random_city_name_string = File.read('/Users/tech-a02/Documents/engineering-9/Sparta_openweather_som/lib/generator/city.list.json')

    @random_city_name_array = JSON.parse(random_city_name_string)
  end

  def generate_city_name
    @random_city_id = @random_city_id_array.sample

    @random_city_name_array.each do |city|
      if @random_city_id == city['id']
        @random_city= city["name"]
      end
    end
    @random_city
  end
end

service = GeneratorService.new
puts service.generate_city_name
