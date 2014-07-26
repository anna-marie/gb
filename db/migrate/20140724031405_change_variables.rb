class ChangeVariables < ActiveRecord::Migration
  def change
	add_column :plants, :leaves, :integer, scale: 1, default: nil
	add_column :plants, :layer, :integer, scale: 1, default: nil
	remove_column :plants, :us_zone_min, :integer
	remove_column :plants, :cdn_zone_min, :integer
  end
end
