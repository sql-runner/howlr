class FollowRelationshipsController < ApplicationController

  def create
    user = User.find_by(username: params[:id])
    current_user.followed_users << user

    redirect_to :back
  end

  def destroy
    user = User.find_by(username: params[:id])
    current_user.followed_users.delete(user)

    redirect_to :back

  end

end
