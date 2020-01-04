class VegitablesController < ApplicationController
  before_action :set_vegitable, only: [:show, :edit, :update, :destroy]

  # GET /vegitables
  # GET /vegitables.json
  def index
    @vegitables = Vegitable.all
    if params[:id].present?
          @category = Category.find(params[:category_id])
    elsif
       params[:search].present?
          @vegitables = Vegitable.where("lower(name) LIKE :prefix", prefix: "%#{params[:search].downcase}%")
    end
  end


  # GET /vegitables/1
  # GET /vegitables/1.json
  def show
  end

  # GET /vegitables/new
  def new
    @vegitable = Vegitable.new
  end

  # GET /vegitables/1/edit
  def edit
  end
# def add_to_cart
#  @vegitable = Vegitable.find(params[:vegitable_id])
#   if @vegitable
#     if user_signed_in?
#       if current_cart.present?
#         cart_item = current_cart.cart_items.find_by_vegitable_id(@vegitable.id)
#         if cart_item.blank?
#           cart_item = current_cart.cart_items.new(vegitable_id: @vegitable.id)
#         end
#         cart_item.unit_price = @vegitable.price
#         cart_item.price = cart_item.unit_price * cart_item.quantity
#         # cart_item.price = cart_item.unit_price * 1

#         if (cart_item.save)
#           flash[:notice] = "Vegitable has been added into your cart"
#           redirect_to root_path
#         end
#     else
#       flash[:notice] = "you need to sign in or sign up"
#       redirect_to "/users/sign_in"
#     end
#     end
#   end
# end
def cart
    @carts = Cart.all
    @cart_items = current_cart.cart_items
  end
  # PATCH/PUT /vegitables/1
  # PATCH/PUT /vegitables/1.json
  def update
    respond_to do |format|
      if @vegitable.update(vegitable_params)
        format.html { redirect_to @vegitable, notice: 'Vegitable was successfully updated.' }
        format.json { render :show, status: :ok, location: @vegitable }
      else
        format.html { render :edit }
        format.json { render json: @vegitable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vegitables/1
  # DELETE /vegitables/1.json
  def destroy
    @vegitable.destroy
    respond_to do |format|
      format.html { redirect_to vegitables_url, notice: 'Vegitable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegitable
      @vegitable = Vegitable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vegitable_params
      params.require(:vegitable).permit(:name, :description, :price, :current_price, :category_id, :image, :quantity)
    end
end
