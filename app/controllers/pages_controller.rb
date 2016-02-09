class PagesController < ApplicationController
<<<<<<< HEAD
  def about
  end

  def contact
    @contact = Contact.new
  end

  def home
    @category = Category.all.reject{ |category| category.try(:products).blank? }.sample
    @products = @category.try(:products)
    @quote = Quote.new
=======
  def index
>>>>>>> bc281907d4713d81bf745bfd342f155aacfef41d
  end
end
