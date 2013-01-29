class AddMytripsColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mytrips, :array
  end
end
