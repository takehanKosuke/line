class Admin::InappropriateWordsController < Admin::BaseController
  def index
    @inappropriate_words = InappropriateWord.all
  end

  def new
    @inappropriate_word = InappropriateWord.new
  end

  def create
    @inappropriate_word = InappropriateWord.new(word_params)
    if @inappropriate_word.save
      redirect_to admin_inappropriate_words_path
    else
      render :new
    end
  end

  def delete
    @word = InappropriateWord.find(params[:id])
    @word.delete
  end

  private
  def word_params
    params.require(:inappropriate_word).permit(
      :word
    )
  end
end
