class ModelsController < ApplicationController
  def new
    @model = Model.new
    @maker = Maker.new
    @model.maker_id = @maker.id
  end

  def create
    @model = Model.new(model_params)
    @model.save

    redirect_to new_yoyo_path
  end

  private
  def model_params
    params.require(:model).permit(:name, :maker_id)
  end
end
