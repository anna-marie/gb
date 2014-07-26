class LightOptionsController < ApplicationController
  before_action :set_light_option, only: [:show, :edit, :update, :destroy]

  # GET /light_options
  # GET /light_options.json
  def index
    @light_options = LightOption.all
  end

  # GET /light_options/1
  # GET /light_options/1.json
  def show
  end

  # GET /light_options/new
  def new
    @light_option = LightOption.new
  end

  # GET /light_options/1/edit
  def edit
  end

  # POST /light_options
  # POST /light_options.json
  def create
    @light_option = LightOption.new(light_option_params)

    respond_to do |format|
      if @light_option.save
        format.html { redirect_to @light_option, notice: 'Light option was successfully created.' }
        format.json { render action: 'show', status: :created, location: @light_option }
      else
        format.html { render action: 'new' }
        format.json { render json: @light_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /light_options/1
  # PATCH/PUT /light_options/1.json
  def update
    respond_to do |format|
      if @light_option.update(light_option_params)
        format.html { redirect_to @light_option, notice: 'Light option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @light_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /light_options/1
  # DELETE /light_options/1.json
  def destroy
    @light_option.destroy
    respond_to do |format|
      format.html { redirect_to light_options_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_light_option
      @light_option = LightOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def light_option_params
      params.require(:light_option).permit(:content)
    end
end
