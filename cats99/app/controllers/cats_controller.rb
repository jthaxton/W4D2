class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    Cat.create!(cat_params)
    redirect_to :cats
  end

  def cat_params
   params.require(:cat).permit(:name,:sex, :description, :color, :birth_date)
 end
end

#
