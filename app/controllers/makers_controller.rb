class MakersController < ApplicationController
  def new
    @maker = Maker.new
  end

  def create
    @maker = Maker.new(maker_params)
    @maker.save

    redirect_to new_model_path
  end

  private
  def maker_params
    params.require(:maker).permit(:name)
  end
end
