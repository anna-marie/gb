class AddSciNameToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :sci_name, :string
  end
end
