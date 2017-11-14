class CategoriesController < ApplicationController

  def index
    @categories = Listing.all
  end

end
