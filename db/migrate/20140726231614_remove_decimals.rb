class RemoveDecimals < ActiveRecord::Migration
  def change
	change_column :plants, :us_zone_max, :integer, scale: 0
	change_column :plants, :cdn_zone_max, :integer, scale: 0
	change_column :plants, :ph_min, :integer, scale: 0
	change_column :plants, :ph_max, :integer, scale: 0
  end
end
