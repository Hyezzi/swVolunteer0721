require 'nokogiri'
require 'open-uri'

class HomeController < ApplicationController
  def index
    @doc = Nokogiri::HTML(open('https://www.naver.com/'))
    
    #puts @doc을 하면 터미널 창에 불러온 텍스트가 떠요 9번째 줄에 #을 지워보세요!
    #puts @doc
  end
end
