class DashboardsController < ApplicationController

  def show
    @wordhowl = WordHowl.new
    @imagehowl = ImageHowl.new
    @timeline = current_user.timeline.page(params[:page])
  end

end
