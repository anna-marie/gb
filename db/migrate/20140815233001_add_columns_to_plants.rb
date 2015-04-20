class AddColumnsToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :family, :string, default: nil
    add_column :plants, :genus, :string
    add_column :plants, :species, :string
    add_column :plants, :subspecies, :string, default: nil
    add_column :plants, :spread_min, :integer, default: nil
    add_column :plants, :spread_max, :integer, default: nil
    add_column :plants, :cdn_zone_min, :integer, default: nil
    add_column :plants, :us_zone_min, :integer, default: nil
    add_column :plants, :rhs_zone_min, :integer, default: nil
    add_column :plants, :rhs_zone_max, :integer, default: nil
    add_column :plants, :origin_id, :integer, default: nil
    add_column :plants, :native_to, :string, default: nil
    add_column :plants, :habitat_id, :integer, default: nil
    add_column :plants, :moisture_id, :integer, default: nil
    add_column :plants, :fertility_id, :integer, default: nil
    add_column :plants, :salt_tolerance_id, :integer, default: nil
    add_column :plants, :ph_id, :integer, default: nil
    add_column :plants, :has_jugolones, :boolean, default: nil
    add_column :plants, :tolerates_jugolones, :boolean, default: nil
    add_column :plants, :susceptible_to_jugolones, :boolean, default: nil
    add_column :plants, :p_ground_cover, :boolean, default: nil
    add_column :plants, :n_allelopathic, :boolean, default: nil
    add_column :plants, :n_dispersive, :boolean, default: nil
    add_column :plants, :n_expansive, :boolean, default: nil
    add_column :plants, :n_hay_fever, :boolean, default: nil
    add_column :plants, :n_persistent, :boolean, default: nil
    add_column :plants, :n_sprawling_vigorous_vine, :boolean, default: nil
    add_column :plants, :n_stings, :boolean, default: nil
    add_column :plants, :n_spiny_thorny, :boolean, default: nil
    add_column :plants, :n_poisonous, :boolean, default: nil

	remove_column :plants, :ph_min, :integer
	remove_column :plants, :ph_max, :integer
	remove_column :plants, :ecozone, :integer
	remove_column :plants, :sci_name, :integer
  end
end
