class ReviewsController < ApplicationController

  def new
    @castle = Castle.find(params[:castle_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @user = User.find(current_user.id)
    @review.user_id = @user.id
    authorize @review
    @castle = Castle.find(params[:castle_id])
    @review.castle = @castle
    if @review.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end

  def destroy
    @castle = Castle.find(params[:id])
    @review = Review.find(params[:castle_id])
    authorize @review
    @review.destroy
    redirect_to @castle
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
