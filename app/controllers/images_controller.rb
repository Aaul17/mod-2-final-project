class ImagesController < ApplicationController
  
  def index
    @images = Image.all.order(:name)
  end

end
