class ProductsController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy ]
  # before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = @category.products
    @quote = Quote.new
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = @category.products.find(params[:id])
    @quote = Quote.new
=======
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
  end

  # GET /products/new
  def new
<<<<<<< HEAD
    @product = @category.products.build
=======
    @product = Product.new
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
  end

  # GET /products/1/edit
  def edit
<<<<<<< HEAD
    @product = @category.products.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = @category.products.build(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to [@product.category, @product], notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
=======
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
    end
  end

  # PATCH/PUT /products/1
<<<<<<< HEAD
  # PATCH/PUT /products/1.json
  def update
    @product = @category.products.find(params[:id])

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to [@product.category, @product], notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
=======
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
    end
  end

  # DELETE /products/1
<<<<<<< HEAD
  # DELETE /products/1.json
  def destroy
    @product = @category.products.find(params[:id])

    @product.destroy
    respond_to do |format|
      format.html { redirect_to category_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    # def set_product
    #   @product = @category.products.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :category, :price, :image_1, :image_2, :promo)
=======
  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:price, :image, :description, :name)
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
    end
end
