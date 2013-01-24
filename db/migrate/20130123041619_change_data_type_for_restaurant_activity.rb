class ChangeDataTypeForRestaurantActivity < ActiveRecord::Migration
  def self.up
  	change_table :restaurants do |t|
      t.change :budget, :string
    end
  end

  def self.down
  	change_table :restaurants do |t|
      t.change :budget, :decimal
    end
  end
end
