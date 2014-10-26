class WordHowlsController < ApplicationController
  
  def create

    current_user.howls.word_howl.new(word_howl_params)

    if current_user.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end

  end

  private

  def word_howl_params
    params.require(:howl).permit(:body)
  end

end
