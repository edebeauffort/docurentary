class EquipmentsController < ApplicationController

  before_action :set_equipment, only: [:show, :edit, :update, :destroy]

  def index                                  # used for listing all equipments on the home page.
    @equipments = Equipment.all
  end

  def show                                   # used for accessing the details of specific equipment.
    @equipment = Equipment.new
  end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_params
      params.require(:equipment).permit(:model, :photo, :photo_cache)
    end


end
