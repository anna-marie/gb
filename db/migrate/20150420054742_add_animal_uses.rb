class AddAnimalUses < ActiveRecord::Migration
  def change
    add_column :plants, :a_poultry, :boolean, default: nil
    add_column :plants, :a_feed, :boolean, default: nil
    add_column :plants, :a_habitat, :boolean, default: nil
    add_column :plants, :a_insects, :boolean, default: nil
  end
end
