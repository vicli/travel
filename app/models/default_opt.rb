class DefaultOpt < ActiveRecord::Base
   attr_accessible :location
    def cities
  	@default_opt = ["Boston", "New York City", "San Francisco"]
  end
end
