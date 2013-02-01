module PlannerHelper
	def oneday()
      actlist = @activitieslist
      llist = @lrestlist
      dlist = @drestlist
      ashortlist = actlist.take(20) 
      lshortlist = llist.take(15)
      dshortlist = dlist.take(15)
      daylist = []

      for activity in ashortlist.sample(1)
        ashortlist.delete(activity)  
        daylist.push(activity) 
      end
      for restaurant in lshortlist.sample(1)
        lshortlist.delete(restaurant)  
        daylist.push(restaurant) 
      end
      for activity in ashortlist.sample(2)
        ashortlist.delete(activity)  
        daylist.push(activity) 
      end
      for restaurant in dshortlist.sample(1)
        dshortlist.delete(restaurant)  
        daylist.push(restaurant) 
      end
      for activity in ashortlist.sample(2)
        ashortlist.delete(activity)  
        daylist.push(activity) 
      end

      return daylist
    end


end