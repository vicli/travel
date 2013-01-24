class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :info_url
      t.decimal :time
      t.decimal :size
      t.string :activity
      t.decimal :budget
      t.decimal :age
      t.string :tourist
      t.decimal :rating
      t.string :tag
      t.string :location
      t.timestamps
    end
  end
end
