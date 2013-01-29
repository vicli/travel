class Activity < ActiveRecord::Base
  attr_accessible :activity, :age, :budget, :category, :description, 
  :info_url, :name, :rating, :size, :tag, :time, :tourist, :location

  scope :boston, where("location = 'b'")
  scope :newyork, where("location = 'nyc'")
  scope :sanfran, where("location = 'sf'")

  scope :b1, order("budget asc")
  scope :b2, where("budget <=2").order("budget desc")
  scope :b3, order("budget desc")

  scope :g1, order("size asc")
  scope :g2, where("size <=2").order("size desc")
  scope :g3, order("size desc")

  scope :a1, order("age asc")
  scope :a2, where("age <=2").order("age desc")
  scope :a3, order("age desc")

  scope :l1, order("activity asc")
  scope :l2, where("activity <=2").order("activity desc")
  scope :l3, order("activity desc")

  scope :t1, order("tourist asc")
  scope :t2, where("tourist <=2").order("tourist desc")
  scope :t3, order("tourist desc")

  scope :rate, order("rating desc")

  def self.searching(b,g,a,l,t,loc)
 	@activities = eval ("Activity." + b + "." + g + "." + a + "." + l + "." + t + "." + loc)
 	#@restaurants = Restaurant.rate
  end

end

require 'csv'
    CSV.foreach('app/assets/nycact.csv',  "r:ISO-8859-1") do |row|
        record = Activity.new(
            :name   => row[0], 
            :category => row[1],
            :description => row[2],
            :info_url => row[3],
            :time => row[4],
            :size => row[5],
            :activity => row[6],
            :budget => row[7],
            :age => row[8],
            :tourist => row[9],
            :rating => row[10],
            :location => row[11]
        )
        record.save!
    end
    CSV.foreach('app/assets/bact.csv',  "r:ISO-8859-1") do |row|
        record = Activity.new(
            :name   => row[0], 
            :category => row[1],
            :description => row[2],
            :info_url => row[3],
            :time => row[4],
            :size => row[5],
            :activity => row[6],
            :budget => row[7],
            :age => row[8],
            :tourist => row[9],
            :rating => row[10],
            :location => row[12]
        )
        record.save!
      end