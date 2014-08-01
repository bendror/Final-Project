require 'nokogiri'
require 'open-uri'
require_relative 'texting.rb'


class Joke
  def initialize
    joke = open('http://jokes.cc.com/')

    nokogiri_joke = Nokogiri::HTML(joke)

    nokogiri_joke.css(".middle #fulltext").children.text.strip

    @daily_joke = nokogiri_joke.css(".middle #fulltext").children.text.strip
    @question = nokogiri_joke.css(".middle #fulltext").children[0].text.strip
    @answer = nokogiri_joke.css(".middle #fulltext").children[1].text.strip

  end
  def daily_joke
     @question + " " + @answer
  end

  
end


class News
  def initialize
    news = open('http://www.foxnews.com/world/index.html')

    nokogiri_news = Nokogiri::HTML(news)

    @title = nokogiri_news.css("div.c-item.c-item-first  div  ul  li  h3").first.text.strip

    
    @image = nokogiri_news.css("div div.c-item.c-item-first div ul li div.m a img").first.attributes.first[1].text
  @url = nokogiri_news.css("div.c-item.c-item-first  div  ul  li  h3 a").first['href']

  end

def url
  @url
end

  def title
    @title
  end

  def image
    @image
  end

end

test = News.new


