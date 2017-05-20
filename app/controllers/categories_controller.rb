class CategoriesController < ApplicationController

  def index
    @categories =  Category.order(created_at: :desc)
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash.now[:success] = 'Category added!'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:title, :description)
  end
end