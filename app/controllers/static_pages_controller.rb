class StaticPagesController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    render :index
  end
end
