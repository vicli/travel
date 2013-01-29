module PlannerHelper
	def oneday()
      actlist = @activitieslist
      llist = @lrestlist
      dlist = @drestlist
      ashortlist = actlist.take(50) 
      lshortlist = llist.take(25)
      dshortlist = dlist.take(25)
      daylist = []
      for activity in ashortlist.sample(1)
        ashortlist.delete(activity)  
        actlist.delete(activity)
        daylist.push(activity) 
      end
      for restaurant in lshortlist.sample(1)
        lshortlist.delete(restaurant)  
        llist.delete(restaurant)
        daylist.push(restaurant) 
      end
      for activity in ashortlist.sample(2)
        ashortlist.delete(activity)  
        actlist.delete(activity)
        daylist.push(activity) 
      end
      for restaurant in dshortlist.sample(1)
        dshortlist.delete(restaurant)  
        dlist.delete(restaurant)
        daylist.push(restaurant) 
      end
      for activity in ashortlist.sample(2)
        ashortlist.delete(activity)  
        actlist.delete(activity)
        daylist.push(activity) 
      end

      return daylist
    end

end