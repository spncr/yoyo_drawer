class YoyosController < ApplicationController
  def index
    @yoyos = Yoyo.all
  end

  def show
    @yoyo = Yoyo.find(params[:id])
  end
end
