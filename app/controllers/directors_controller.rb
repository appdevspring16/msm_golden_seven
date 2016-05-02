class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end

end
