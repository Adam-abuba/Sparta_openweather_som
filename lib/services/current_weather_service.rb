require 'httparty'
require 'json'

class CurrentWeatherService
  include HTTParty

  base_uri ('http://api.openweathermap.org')


  def get_weather_data(city_name)
    @weather_data = JSON.parse(self.class.get("/data/2.5/weather?q=#{city_name}&APPID=894929211ed5c442456454a041ce3c92").body)
  end
  def get_data
      @weather_data
  end

  def get_id
    @weather_data["id"]
  end
  def check_name_string
    @weather_data["name"]
  end
  def check_country_string
    @weather_data["sys"]["country"]
  end
  def check_country_string_length
    @weather_data["sys"]["country"].length
  end
  def check_long_float
    @weather_data["coord"]["lon"]
  end
  def check_lat_float
    @weather_data["coord"]["lat"]
  end
  def check_weather_id
    @weather_data['weather'][0]['id']
  end

end
