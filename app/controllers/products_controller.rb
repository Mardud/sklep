class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(params[:product].permit(:name, :description, :price))
    redirect_to admin_category_path(@category)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
    @product.destroy
    redirect_to admin_category_path(@category)
  end

  def edit
    @product = Product.find(params[:id])
  end
end
