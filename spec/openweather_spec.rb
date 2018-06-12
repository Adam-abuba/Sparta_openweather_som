require 'spec_helper'


describe OpenWeather do

  context 'Requesting weather information for a single city' do
    before(:all) do
      @openweather = OpenWeather.new.get_current_weather_service
      @random_city_id = GeneratorService.new.generate_city_id
      @openweather.get_weather_data(@random_city_id)
    end

    it "Should get a random city details as a Hash" do
      expect(@openweather.get_data).to be_kind_of(Hash)
    end

  end

end

puts @openweather
