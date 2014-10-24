class HowlsController < ApplicationController

  def create
    howl = Howl.new(howl_params)
    current_user.howls.create(howl)

    if current_user.save
      redirect_to :root
    else
      render :back
    end

  end

  private

  def howl_params
    params.require(:howl).permit(:content)
  end

end
