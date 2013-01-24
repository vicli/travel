class Restaurant < ActiveRecord::Base
  
  attr_accessible :activity, :age, :budget, 
  	:description, :info_url, :name, :rating, 
  	:size, :tag, :time, :tourist
  scope :b1, order("budget asc")
  scope :b2, order(:budget => [2,1,3])
  scope :b3, order("budget desc")

  scope :g1, order("size asc")
  scope :g2, order(:size => [2,1,3])
  scope :g3, order("size desc")

  scope :a1, order("age asc")
  scope :a2, order(:age => [2,1,3])
  scope :a3, order("age desc")

  scope :l1, order("activity asc")
  scope :l2, order(:activity => [2,1,3])
  scope :l3, order("activity desc")

  scope :t1, order("tourist asc")
  scope :t2, order(:tourist => [2,1,3])
  scope :t3, order("tourist desc")

  scope :rate, order("rating desc")

  def self.searching(b,g,a,l,t)
 	@restaurants = eval ("Restaurant." + b + "." + g + "." + a + "." + l + "." + t + ".rate")
  	
  end

end
