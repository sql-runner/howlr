class FollowRelationshipsController < ApplicationController

  def create
    user = User.find(params[:id])
    current_user.followed_users << user

    redirect_to :back
  end

end
