class PlantsController < ApplicationController
  before_action :signed_in_user
  before_action :admin_or_superadmin_user
  before_filter :prepare_categories

  def create
    @plant = current_user.plants.build(plant_params)
    if @plant.save
      flash[:success] = "Plant listing added!"
      redirect_to @plant
    else
      render 'new'
    end
  end
  
  def new
    @plant = Plant.new
  end

  def destroy
  end

  private

    def plant_params
      params.require(:plant).permit(:common_name, :sci_name, :layer_id, :layer2_id, 
	                      :us_zone_max, :cdn_zone_max, :type_id, :light_id, :drought_resistant, :p_n_fixer, :p_biomass, :p_hedgerow, :p_nutrient_accumulator, :p_cover_crop, :p_windbreak, :p_mulch, :p_repel_pests, :p_repel_invaders, :p_taproot, :h_edible, :h_medicinal, :h_oil, :h_tea, :h_basket, :h_dye, :h_fibre, :h_fragrance, :h_gourd, :h_poles, :h_polish, :h_repellent, :h_soap, :h_wood, :e_air_purifier, :e_erosion_control, :e_fire_retardant, :e_flood_management, :e_toxin_absorber, :e_water_purifier, :description, :sources)
    end
	
    def prepare_categories
	  @types = Type.all
      @lighting = Light.all
      @layers = Layer.all
	  @yes_no = [[1, 'Yes'], [0, 'No']]
    end
end