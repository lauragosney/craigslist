class ListingsController < ApplicationController


  def new
    @listings = Listing.new
  end

  def create

    @listing = Listing.new(form_params)

    @listing.save

    redirect_to listing_path(@listing)

  end

  def show
    # individual review page
    @listing = Listing.find(params[:id])
  end




end
