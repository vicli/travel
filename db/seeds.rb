# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# RESTAURANTS
Restaurant.delete_all

Restaurant.create(
  :name => 'Neptune Oyster',
  :description => 'Lovely fresh seafood for all!',
  :info_url => 'http://www.yelp.com/biz/neptune-oyster-boston',
  :time => 2,
  :size => 2,
  :activity => 1,
  :budget => 3,
  :age => 1,
  :tourist => 2,
  :rating => 5,
  :tag => 'seafood',
)

Restaurant.create(
  :name => 'Redbones',
  :description => 'Barbeque.',
  :info_url => 'http://www.yelp.com/biz/redbones-somerville',
  :time => 1,
  :size => 3,
  :activity => 1,
  :budget => 2,
  :age => 1,
  :tourist => 1,
  :rating => 3,
  :tag => "american",
)

Restaurant.create(
  :name => 'Giacomo\'s Ristorante',
  :description => 'Pizza and pasta',
  :info_url => 'http://www.yelp.com/biz/giacomos-ristorante-boston',
  :time => 2,
  :size => 2,
  :activity => 1,
  :budget => 2,
  :age => 1,
  :tourist => 1,
  :rating => 5,
  :tag => "italian",
)
Restaurant.create(
  :name => 'Thelonius Monkfish',
  :description => 'Fusion Japanese food.',
  :info_url => 'www.theloniusmonkfish.com',
  :time => 2,
  :size => 3,
  :activity => 1,
  :budget => 2,
  :age => 1,
  :tourist => 1,
  :rating => 4,
  :tag => "japanese",
)
Restaurant.create(
  :name => 'Border Cafe',
  :description => 'In Harvard Square',
  :info_url => 'http://www.yelp.com/biz/border-caf%C3%A9-cambridge-2',
  :time => 1,
  :size => 3,
  :activity => 1,
  :budget => 2,
  :age => 1,
  :tourist => 2,
  :rating => 4,
  :tag => "mexican",
)

Restaurant.create(
  :name => 'Beehive',
  :description => 'Woo',
  :info_url => 'http://www.yelp.com/biz/the-beehive-boston',
  :time => 2,
  :size => 2,
  :activity => 1,
  :budget => 2,
  :age => 1,
  :tourist => 2,
  :rating => 4,
  :tag => "american",
)

Restaurant.create(
  :name => 'Union Oyster House',
  :description => 'Fresh seafood',
  :info_url => 'http://www.yelp.com/biz/union-oyster-house-boston',
  :time => 2,
  :size => 2,
  :activity => 1,
  :budget => 2,
  :age => 1,
  :tourist => 2,
  :rating => 3,
  :tag => "seafood",
)

Restaurant.create(
  :name => 'Beehive',
  :description => 'Woo',
  :info_url => 'http://www.yelp.com/biz/the-beehive-boston',
  :time => 2,
  :size => 2,
  :activity => 1,
  :budget => 3,
  :age => 1,
  :tourist => 2,
  :rating => 4,
  :tag => "american",
)

