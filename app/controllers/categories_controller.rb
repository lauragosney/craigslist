class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end


  def new
    @category = Category.new
  end

  def create
    @category = Category.new(form_params)

    @category.save

    redirect_to root_path
  end

  def show
    @category = Category.find(params[:id])
  end

  def form_params
    params.require(:category).permit(:title)
  end

end
