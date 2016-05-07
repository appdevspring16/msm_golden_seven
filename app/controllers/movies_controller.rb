class MoviesController < ApplicationController

  def new_form

  end

  def create_row
    mv = Movie.new

    mv.title = params[:title]
    mv.year = params[:year]
    mv.duration = params[:duration]
    mv.description = params[:description]
    mv.image_url = params[:image_url]

    mv.save

    redirect_to("/movies")
  end

  def index
    @movie_list = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])

    render("show")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    mv = Movie.find(params[:id])

    mv.title = params[:title]
    mv.year = params[:year]
    mv.duration = params[:duration]
    mv.description = params[:description]
    mv.image_url = params[:image_url]

    mv.save

    redirect_to("/movies")
  end

  def destroy
    mv =Movie.find(params[:id])

    mv.destroy

    redirect_to("/movies")
  end
end
