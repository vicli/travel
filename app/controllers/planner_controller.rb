class PlannerController < ApplicationController
  def index
  	puts "these are params"
  	Restaurant.create params[:restaurant]
    params[:restaurant]
    b= params[:budget]
    g=params[:size]
    a= params[:age]
    l= params[:activity]
    t= params[:tourist]

    @restaurants = Restaurant.searching(b,g,a,l,t)
  end
end
