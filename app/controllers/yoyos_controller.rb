class YoyosController < ApplicationController
  def index
    @yoyos = Yoyo.all
  end

  def show
    @yoyo = Yoyo.find(params[:id])
  end

  def new
    @yoyo = Yoyo.new
  end

  def create
    @yoyo = Yoyo.new(yoyo_params)
    @yoyo.save

    redirect_to yoyos_path
  end

  def edit
    @yoyo = Yoyo.find(params[:id])
  end

  def update
    @yoyo = Yoyo.find(params[:id])
    @yoyo.update(yoyo_params)

    flash.notice = "#{@yoyo.title} updated."

    redirect_to yoyo_path(@yoyo)
  end

  def destroy
    @yoyo = Yoyo.find(params[:id])
    @yoyo.destroy
    redirect_to yoyos_path
  end

  private
  def yoyo_params
    params.require(:yoyo).permit(:title, :description, :image, :accepting_offers)
  end
end
