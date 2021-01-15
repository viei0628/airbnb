class ListingsController < ApplicationController

  def all
    @castles = Castle.all

    if params[:castle]
      @castles = @castles.select { |castle| castle.name.start_with?(params[:castle]) }
    end
  end
end
