class DirectorsController < ApplicationController
  def index
    @director_list = Director.all
  end

  def show
    @director = Director.find(params[:id])

    render("show")
  end
end
