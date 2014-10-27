class FollowRelationshipsController < ApplicationController

  def create
    user = User.find_by(username: params[:id])
    current_user.follow(user)

    redirect_to :back
  end

  def destroy
    user = User.find_by(username: params[:id])
    current_user.unfollow(user)

    redirect_to :back

  end

end
