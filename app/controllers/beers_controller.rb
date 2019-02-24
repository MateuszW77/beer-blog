class BeersController < ApplicationController

  def index

  end

  def new
    @beer = BeerType.new
  end

  def create
    @beer = BeerType.new(beer_params)
    if @beer.save
      flash[:notice] = "Article was succesfully created"
      redirect_to beers_path(@beer)
    else
      render 'new'
    end
    # render plain: params[:beer].inspect
  end

  def show
    @beer = BeerType.find(params[:id])
  end

  private

    def beer_params
      params.require(:beer_type).permit(:title, :text)
      # params.permit(:title, :text)
    end

end
