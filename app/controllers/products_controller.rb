class ProductsController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Your product updates have been made."
      redirect_to products_path
    else
      render :edit
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Your product has been saved."
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
