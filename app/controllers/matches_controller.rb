class MatchesController < ApplicationController

  def create
    user = User.find(params[:matched_id])
    current_user.match(user)
    redirect_back(fallback_location: current_user)
  end

  def destroy
    match = Match.find(params[:id])
    user1 = User.find(match.matched_id)
    user2 = User.find(match.matcher_id)
    match1 = Match.where(matcher_id: user1.id,matched_id: user2.id)[0]
    match2 = Match.where(matcher_id: user2.id,matched_id: user1.id)[0]
    match1.destroy
    match2.destroy
    redirect_back(fallback_location: current_user)
  end
end
