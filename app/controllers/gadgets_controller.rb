class GadgetsController < ApplicationController

  before_action :set_gadget, only: [:show, :edit, :update, :destroy]

  def index
    @filtered_gadgets = Gadget.search_results(params[:category], params[:location]).where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@filtered_gadgets) do |gadget, marker|
    marker.lat gadget.latitude
    marker.lng gadget.longitude
    #raise
    marker.infowindow render_to_string(partial: "/gadgets/infowindow", locals: { info_gadget: gadget })
    end
    #NOTE: WE DON'T HAVE GOOGLE API KEYS PUSHED TO HEROKU YET!!
  end

  # def search_results
  #   @filtered_gadgets = Gadget.search_results(params[:category],params[:location])
  # end


  def show
    @booking = Booking.new
                                     # used for accessing the details of specific gadget.
    @hash = Gmaps4rails.build_markers(@gadget) do |gadget, marker|
      marker.lat gadget.latitude
      marker.lng gadget.longitude
    end
  end

  def new                                   # used for accessing the details of specific gadget.
    @gadget = Gadget.new
  end

  def create
    @gadget = Gadget.new(gadget_params)
    @gadget.user = current_user

    if @gadget.save
      redirect_to gadget_path(@gadget)
    else
      render :new
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
