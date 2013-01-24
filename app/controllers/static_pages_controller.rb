class StaticPagesController < ApplicationController
  def home
  	puts "this is the city name"
  	puts params[:city]
  end

  def about
  end
end
