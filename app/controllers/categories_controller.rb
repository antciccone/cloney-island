class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

   def show
    @category = Category.find_by_slug(params[:category])
   end
end
