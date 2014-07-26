class ChangeCategoriesInPlant < ActiveRecord::Migration
  def change
	rename_column  :plants, :layer, :layer_id
	rename_column  :plants, :leaves, :leaves_id
	rename_column  :plants, :light, :light_id
	rename_column  :plants, :type, :type_id
  end
end
