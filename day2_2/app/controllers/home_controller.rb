require 'nokogiri'
require 'open-uri'


class HomeController < ApplicationController
  def index
    @doc = Nokogiri::HTML(open('https://guide.michelin.co.kr/ko/restaurant/page/2/'))
    @restaurants = @doc.css('.restaurant-list-item')
    

    @doc2 = Nokogiri::HTML(open('https://guide.michelin.co.kr/ko/restaurant/page/3/'))
    @restaurants2 = @doc2.css('.restaurant-list-item')

  end
end
