class CreateDefaultOpts < ActiveRecord::Migration
  def change
    create_table :default_opts do |t|

      t.timestamps
    end
  end
end
