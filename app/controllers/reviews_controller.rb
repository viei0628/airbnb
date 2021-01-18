class ReviewsController < ApplicationController

  def new
    @castle = Castle.find(params[:castle_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @castle = Castle.find(params[:castle_id])
    @review.castle = @castle
    if @review.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
