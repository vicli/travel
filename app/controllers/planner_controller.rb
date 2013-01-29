include PlannerHelper
class PlannerController < ApplicationController
  helper:all
  def index

  end


   def update
   	puts "inupdate"
   	b= params[:budget]
   
      g=params[:size]
      a= params[:age]
      l= params[:activity]
      t= params[:tourist]
    	loc = params[:city] 

    @num_days = params[:day]
    @lrestaurants = Restaurant.lsearching(b,g,a,l,t,loc)
    @drestaurants = Restaurant.dsearching(b,g,a,l,t,loc)
    @activities = Activity.searching(b,g,a,l,t,loc)
    @activitieslist = @activities
    @drestlist = @drestaurants 
    @lrestlist = @lrestaurants 

    @fullday = oneday()


    # for i in num_days
    #   @fulldays = @fulldays+ oneday()
    # end
    activitieslist = @activities
    drestlist = @drestaurants 
    lrestlist = @lrestaurants 
    puts @activities.size
    respond_to do |format|
    	format.html {render :partial => 'planner/load'}
    	format.js {render :partial => 'planner/load'}
    end
   end




end


