class HowlsController < ApplicationController

  def create

    current_user.howls.new(howl_params)

    if current_user.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end

  end

  private

  def howl_params
    params.require(:howl).permit(:content)
  end

end
