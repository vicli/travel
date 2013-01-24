class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :info_url
      t.decimal :time
      t.decimal :size
      t.string :activity
      t.decimal :budget
      t.decimal :age
      t.string :tourist
      t.decimal :rating
      t.text :tag
      t.string :location

      t.timestamps
    end
  end
end
