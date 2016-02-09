class CategoriesController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_admin!, only: [ :show, :new, :create, :edit, :update, :destroy ]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    @products = Category.all.reject{ |category| category.try(:products).blank? }.sample.try(:products)
  end

  # GET /categories/1
  # GET /categories/1.json
=======
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/1
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
<<<<<<< HEAD
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
=======
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: 'Category was successfully created.'
    else
      render :new
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
    end
  end

  # PATCH/PUT /categories/1
<<<<<<< HEAD
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
=======
  def update
    if @category.update(category_params)
      redirect_to @category, notice: 'Category was successfully updated.'
    else
      render :edit
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
    end
  end

  # DELETE /categories/1
<<<<<<< HEAD
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
=======
  def destroy
    @category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

<<<<<<< HEAD
    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :image)
=======
    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:image, :description, :name)
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
    end
end
