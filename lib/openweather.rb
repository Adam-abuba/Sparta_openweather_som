require 'httparty'
require 'json'
require_relative 'services/current_weather_service.rb'


class OpenWeather
include HTTParty

def get_current_weather_service
  CurrentWeatherService.new
end

end
