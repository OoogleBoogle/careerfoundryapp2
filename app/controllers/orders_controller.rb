class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /orders
  # GET /orders.json
  def index
    @user = current_user
    @orders = @user.orders
    @total = @orders.sum(:price)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    @order = Order.new(product_id: @product.id, user_id: @user.id, price: @product.price)

    respond_to do |format|
      if @order.save
        format.html { redirect_to products_path, notice: 'Saved to Cart'}
        format.js {}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to user_orders_path(current_user), notice: 'Removed from Cart' }
      format.json { head :no_content }
    end
  end

  def destroy_all
    @orders = current_user.orders
    @orders.destroy_all
    flash[:notice] = 'All items deleted'
    redirect_to user_orders_path(current_user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:product_id, :user_id, :price)
    end
end
