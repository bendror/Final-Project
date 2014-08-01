require_relative 'lib/scraper.rb'
require_relative 'lib/texting.rb'

task :send_joke do 
  joke = Joke.new
  text = Texting.new
  text.send(joke.daily_joke)  
end
