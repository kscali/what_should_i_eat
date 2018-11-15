require 'net/http'
require 'json'

module WhatShouldIEat
  def self.fresh
    result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
    recipes = JSON.parse(result)
    name = recipes.first['items'].first['label']
    url = recipes.first['items'].first['url']
    puts name
    puts url
  end
end
