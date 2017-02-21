class GadgetsController < ApplicationController

  before_action :set_gadget, only: [:show, :edit, :update, :destroy]

  def index                                  # used for listing all gadgets on the home page.
    @gadgets = Gadget.all
  end

  def show                                   # used for accessing the details of specific gadget.
  end

  def new                                   # used for accessing the details of specific gadget.
    @gadget = Gadget.new
  end

  def create
    @gadget = Gadget.new(gadget_params)
    @gadget.user = current_user
    if @gadget.save
      redirect_to gadget_path(@gadget) #change later
    else
      render 'gadgets/new'
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_gadget
      @gadget = Gadget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gadget_params
      params.require(:gadget).permit(:category, :brand, :model, :price, :description, :location, photos: [])
    end


end
