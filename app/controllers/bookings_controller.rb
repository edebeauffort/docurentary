class BookingsController < ApplicationController

   before_action :set_booking, only: [:show]
   before_action :set_gadget, only: [:new]

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
  @booking = Booking.new(booking_params)
  @booking.gadget = @gadget
  @booking.save

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :gadget_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_gadget
    @gadget = Gadget.find(params[:gadget_id])
  end
end
