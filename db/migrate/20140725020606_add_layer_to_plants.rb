class AddLayerToPlants < ActiveRecord::Migration
  def change
	add_column :plants, :layer2_id, :integer, scale: 1, default: nil
  end
end
