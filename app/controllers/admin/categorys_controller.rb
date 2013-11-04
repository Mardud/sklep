class Admin::CategorysController < ApplicationController

  def new
    @category=Category.new
  end

  def create
    @category = Category.new(params[:category].permit(:title))

    @category.save
    redirect_to admin_categorys_path
  end

  def show
    @category = Category.find(params[:id])
  end

  def index
    @categorys = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to admin_categorys_path
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end
end
