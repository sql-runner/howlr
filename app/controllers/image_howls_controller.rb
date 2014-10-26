class ImageHowlsController < ApplicationController

  def create
    image_howl = ImageHowl.create(image_howl_params)
    @howl = current_user.howls.new(content: image_howl)

    if @howl.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end

  end

  private

  def image_howl_params
    params.require(:image_howl).permit(:avatar)
  end

end
