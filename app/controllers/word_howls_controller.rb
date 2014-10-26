class WordHowlsController < ApplicationController
  
  def create
    word_howl = WordHowl.new(word_howl_params)
    @howl = current_user.howls.new(content: word_howl)

    if @howl.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end

  end

  private

  def word_howl_params
    params.require(:word_howl).permit(:body)
  end

end
