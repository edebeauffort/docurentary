class BookingsController < ApplicationController

   before_action :set_gadget, only: [:new]

   def index
   end

    def my_requests
      @requests = []
      current_user.gadgets.each do |gadget|
        @requests << gadget.bookings
      end
      @requests = @requests.flatten.sort
      @sorted_requests = @requests.sort_by do |item|
        item.created_at
      end
    end

  def new
    @booking = Booking.new
  end

  def create
    @gadget = Gadget.find(params[:gadget_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.gadget = @gadget
    if @booking.save
      redirect_to gadget_path(@gadget)
    else
      render gadget_path(@gadget)
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @gadget = Gadget.find(params[:gadget_id])
    @booking = Booking.where(gadget_id: @gadget.id)
  end

  def set_gadget
    @gadget = Gadget.find(params[:gadget_id])
  end
end
