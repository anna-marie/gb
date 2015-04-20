class UpdatePlants < ActiveRecord::Migration
  def change
	remove_column :plants, :Field78, :integer
	remove_column :plants, :sci_name, :varchar
  end
end
