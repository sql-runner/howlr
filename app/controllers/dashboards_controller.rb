class DashboardsController < ApplicationController

  def show
    @wordhowl = WordHowl.new
    @imagehowl = ImageHowl.new
  end

end
