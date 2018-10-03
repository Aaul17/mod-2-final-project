class InterestsController < ApplicationController
  def index
    @interests = Interest.all.order(:name)
  end

  def show
    @interest = Interest.find_by(id: params[:id])
  end
end
