require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/texting.rb'
require './lib/scraper.rb'


get '/' do
  @today_joke = Joke.new
  @news = News.new
  erb :index # This tells your program to use the html associated with the index.erb file in your browser.
end