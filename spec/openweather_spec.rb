require 'spec_helper'


describe OpenWeather do

  context 'Requesting weather information for a single city' do
    before(:all) do
      @openweather = OpenWeather.new.get_current_weather_service
      @random_city_name = GeneratorService.new.generate_city_name
      @openweather.get_weather_data(@random_city_name)
    end

    it "Should get a random city details as a Hash" do
      expect(@openweather.get_data).to be_kind_of(Hash)
    end

    it "Should have a name which is a string" do
      expect(@openweather.check_name_string).to be_kind_of(String)
    end

    it "Should have either a float or integer as its id" do
      expect(@openweather.get_id).to be_kind_of(Float) | be_kind_of(Integer)
    end



    it "Should have a country which is a String" do
      expect(@openweather.check_country_string).to be_kind_of(String)
    end

    it "Should have a country string of two characters" do
      expect(@openweather.check_country_string_length).to eq(2)
    end

    it "Should have Float for the longitude value" do
      expect(@openweather.check_long_float).to be_kind_of(Float)
    end
    it "Should have Float for the latitude value" do
      expect(@openweather.check_lat_float).to be_kind_of(Float)
    end

    it "Should have a weather condition id as an integer" do
      expect(@openweather.check_weather_id).to be_kind_of(Integer)
    end

    it "Should have a weather condition parameter as a String" do
      expect(@openweather.check_weather_main).to be_kind_of(String)
    end

  end
end
