class ReviewsController < ApplicationController
  def index
  @gadget = Gadget.find(params[:gadget_id])
  @reviews = @gadget.reviews
  end
   def new
    @gadget = Gadget.find(params[:gadget_id])
    @review = Review.new
  end
  def create
    @gadget = Gadget.find(params[:gadget_id])

    if @gadget.reviews.create(reviews_params)
      redirect_to gadget_path(@gadget)
    else
      render "new"
    end
  end

  private
  def reviews_params
    params.require(:review).permit(:context, :rating)
  end
end
