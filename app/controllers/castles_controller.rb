class CastlesController < ApplicationController
  def show
    @castle = Castle.find(params[:id])
  end
end
