class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.integer :creator_id
      t.string  :common_name, null: false
      t.string  :sci_name, null: false
	  t.float   :us_zone_min, scale: 1, default: nil
	  t.float   :us_zone_max, scale: 1, default: nil
	  t.float   :cdn_zone_min, scale: 1, default: nil
	  t.float   :cdn_zone_max, scale: 1, default: nil
	  t.integer :ecozone, default: nil
	  t.integer :type, default: nil
	  t.integer :light, default: nil
	  t.integer :ph_min, default: nil
	  t.integer :ph_max, default: nil
	  t.float   :height_min, scale: 2, default: nil
	  t.float   :height_max, scale: 2, default: nil
	  t.boolean :drought_resistant, default: nil
	  t.boolean :p_n_fixer, default: nil
	  t.boolean :p_biomass, default: nil
	  t.boolean :p_hedgerow, default: nil
	  t.boolean :p_nutrient_accumulator, default: nil
	  t.boolean :p_cover_crop, default: nil
	  t.boolean :p_windbreak, default: nil
	  t.boolean :p_mulch, default: nil
	  t.boolean :p_repel_pests, default: nil
	  t.boolean :p_repel_invaders, default: nil
	  t.boolean :p_taproot, default: nil
	  t.boolean :h_edible, default: nil
	  t.boolean :h_medicinal, default: nil
	  t.boolean :h_oil, default: nil
	  t.boolean :h_tea, default: nil
	  t.boolean :h_basket, default: nil
	  t.boolean :h_dye, default: nil
	  t.boolean :h_fibre, default: nil
	  t.boolean :h_fragrance, default: nil
	  t.boolean :h_gourd, default: nil
	  t.boolean :h_poles, default: nil
	  t.boolean :h_polish, default: nil
	  t.boolean :h_repellent, default: nil
	  t.boolean :h_soap, default: nil
	  t.boolean :h_wood, default: nil
	  t.boolean :e_air_purifier, default: nil
	  t.boolean :e_erosion_control, default: nil
	  t.boolean :e_fire_retardant, default: nil
	  t.boolean :e_flood_management, default: nil
	  t.boolean :e_toxin_absorber, default: nil
	  t.boolean :e_water_purifier, default: nil
	  t.string  :description, default: nil
	  t.string  :sources, default: nil

      t.timestamps
    end
    add_index :plants, [:us_zone_min, :us_zone_max, :cdn_zone_min, :cdn_zone_max, :ecozone, :type, :light, :common_name, :sci_name], :name => 'main_index'
  end
end
