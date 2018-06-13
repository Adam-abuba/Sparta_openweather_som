# Sparta OpenWeather SOM

The task was to use the API provided by openweather.org to and use it to query the current weather of a city that was to first be picked randomly by a id number from a provided YAML file then use and match that id to another the same number in order take a city name from a provided JSON file. The city name was the attribute used to query the API. It was then necessary to test the API and its attributes.
## Setup 
- Once you access the GitHub repository you can obtain the files by either taking the repository clone link and running `git clone [insert clone link here]`.
- You can also obtain the files by directly downloading them from GitHub as a zip file.
- The group of files contain current_weather_services.rb within services folder within the lib folder which can be accessed and changed accordingly to change how queries are made to the API is wanted. In doing so you will need to also change the method that grabs a random attribute used to query the API in the city_id_generator.rb file. 
- The test are contained within the spec but in order to run the test after entering sparta_openweather_som  folder use the terminal to run `rspec` and the test will be carried out displaying the results.
