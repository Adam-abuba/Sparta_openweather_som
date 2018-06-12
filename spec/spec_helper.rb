require 'rspec'
require_relative '../lib/generator/city_id_generator.rb'
require_relative '../lib/openweather.rb'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
