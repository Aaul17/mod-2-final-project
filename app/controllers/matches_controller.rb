class MatchesController < ApplicationController

  def create
    user = User.find(params[:matched_id])
    current_user.match(user)
    redirect_back(fallback_location: current_user)
  end

  def destroy
    user = Match.find(params[:id]).matched
    current_user.unmatch(user)
    redirect_back(fallback_location: current_user)
  end
end
