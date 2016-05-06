class MoviesController < ApplicationController

  def index
    @movie_list = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])

    render("show")
  end

  def destroy
    mv =Movie.find(params[:id])

    mv.destroy

    redirect_to("/movies")
  end
end
