class Restaurant < ActiveRecord::Base
  
  attr_accessible :activity, :category, :age, :budget, 
    :description, :info_url, :name, :rating, 
    :size, :tag, :time, :tourist, :location

  scope :lunch, where("category = 'l'")
  scope :dinner, where("category = 'd'")

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

  def self.lsearching(b,g,a,l,t,loc)
    @lrestaurants = eval ("Restaurant." + "lunch." + b + "." + g + "." + a + "." + l + "." + t + "." + loc)
  #@restaurants = Restaurant.rate
  end
  def self.dsearching(b,g,a,l,t, loc)
    @drestaurants = eval ("Restaurant." + "dinner." + b + "." + g + "." + a + "." + l + "." + t + "." + loc)
  #@restaurants = Restaurant.rate
  end

end

require 'csv'
    CSV.foreach('app/assets/nycrestaurant.csv',  "r:ISO-8859-1") do |row|
        record = Restaurant.new(
            :name   => row[0], 
            :category => row[1],
            :description => row[11],
            :info_url => row[3],
            :time => row[4],
            :size => row[5],
            :activity => row[6],
            :budget => row[7],
            :age => row[8],
            :tourist => row[9],
            :rating => row[10],
            :tag => row[11],
            :location => row[12]
        )
        record.save!
    end

    CSV.foreach('app/assets/bostonrest.csv',  "r:ISO-8859-1") do |row|
        record = Restaurant.new(
            :name   => row[0], 
            :category => row[11],
            :description => row[1],
            :info_url => row[3],
            :time => row[4],
            :size => row[5],
            :activity => row[6],
            :budget => row[7],
            :age => row[8],
            :tourist => row[9],
            :rating => row[10],
            :tag => row[2],
            :location => row[12]
        )
        record.save!
    end

# require 'csv-mapper'

# include CsvMapper

# results = import('../assets/nycrest.csv') do
#   map_to Restaurant # Map to the Person ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, restaurant| restaurant.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 2
#   [name, category, description, info_url, time, size, activity, budget, age, tourist, rating, tag, location]
# end