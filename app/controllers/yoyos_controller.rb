class YoyosController < ApplicationController
  before_action :require_login, except: [:show, :index]

  def index
    @yoyos = Yoyo.all
  end

  def show
    @yoyo = Yoyo.find(params[:id])
    @comment = Comment.new
    @comment.yoyo_id = @yoyo.id
  end

  def new
    @yoyo = Yoyo.new
    @makers = Maker.all
  end

  def create
    @yoyo = Yoyo.new(yoyo_params)
    unless @yoyo.image.attached?
      @yoyo.image.attach(io: File.open('app/assets/images/placeholder.jpg'), filename: 'placeholder.jpg')
    end
    @yoyo.save

    redirect_to yoyos_path
  end

  def edit
    @yoyo = Yoyo.find(params[:id])
    @makers = Maker.all
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

    flash.notice = "#{@yoyo.title} is gone."
    redirect_to yoyos_path
  end

  private
  def yoyo_params
    params.require(:yoyo).permit(:title, :description, :image, :accepting_offers, :model_id)
  end

  def create_comment
  end
end
