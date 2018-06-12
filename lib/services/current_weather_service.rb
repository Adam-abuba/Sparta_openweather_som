require 'httparty'
require 'json'

class CurrentWeatherService
  include HTTParty

  base_uri ('http://api.openweathermap.org')

  def get_weather_data(city_id)
    @weather_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{city_id}&APPID='6f709302b444c411e8ea79bc1c313dbf'").body)
  end

end

service = CurrentWeatherService.new
puts service.get_weather_data()
