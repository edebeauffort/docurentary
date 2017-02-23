class BookingsController < ApplicationController

   before_action :set_booking, only: [:show]
   before_action :set_gadget, only: [:new]

  def new
    @booking = Booking.new
  end

  def show
    @start = params[:start_date]
    @end = params[:end_date]
  end

  def create
    # binding.pry
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
    @booking = Booking.find(params[:booking_id])
  end

  def set_gadget
    @gadget = Gadget.find(params[:gadget_id])
  end
end
