class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using the ID from URL
    cheese = Cheese.find_by(id: params[:id])
    # send JSON response using that cheese object
    render json: cheese
  end

end
