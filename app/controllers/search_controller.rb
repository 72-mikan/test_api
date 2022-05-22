class SearchController < ApplicationController
  require 'net/http'
  require 'rexml/document'
  #require "open-uri"
  require 'json'
  require 'nokogiri'


  def search
    
    @contents = nil
    if area_code = params[:area_code]
      params = URI.encode_www_form({large_area: area_code})
      uri = URI.parse("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=&#{params}")
      doc = Nokogiri::HTML(open(uri),nil,"utf-8")
      @contents = doc.xpath('//results//shop')
    end
  end

end
