class CategorysController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

  def index
    @categorys = Category.all
  end
end
