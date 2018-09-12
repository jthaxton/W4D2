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

  def edit
   cat = Cat.find(params[:id])
   render :form(cat)

  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)
    redirect_to :cats
  end

  private

  def cat_params
   params.require(:cat).permit(:name,:sex, :description, :color, :birth_date)
  end




end

#
