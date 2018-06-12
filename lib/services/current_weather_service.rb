require 'httparty'
require 'json'

class CurrentWeatherService
  include HTTParty

  base_uri ('http://api.openweathermap.org')


  def get_weather_data(city_id)
    @weather_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{city_id}&APPID=894929211ed5c442456454a041ce3c92").body)
  end
  def get_data
      @weather_data
  end
end
services = CurrentWeatherService.new
puts services.get_weather_data(53654).class
