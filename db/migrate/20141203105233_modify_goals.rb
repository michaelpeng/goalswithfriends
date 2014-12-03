class ModifyGoals < ActiveRecord::Migration
  def change
  	remove_column :goals, :listme
  	remove_column :goals, :level
  end
end
