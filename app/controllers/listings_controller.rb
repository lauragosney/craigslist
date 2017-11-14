class ListingsController < ApplicationController


  def new
    @category = Category.find(params[:category_id])
    @listing = @category.listings.new
  end

  def create

    @category = Category.find(params[:category_id])
    @listing = @category.listings.new(form_params)


    if @listing.save
     redirect_to category_path(@category)
    else
     render "new"
    end
  end

    def form_params
    # get the data from the form
    params.require(:listing).permit(:title, :body)
    end



  def show
    # individual review page
    @category = Category.find(params[:category_id])

    @listing = Listing.find(params[:id])
  end




end
