class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def new_form
  end
  def create_row
    movie = Movie.new
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.save
    @movie =Movie.last
    render("show")
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    movie = Movie.find(params[:id])
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.save
    @movie = Movie.find(params[:id])
    render("show")
  end
  def destroy
    movie = Movie.find(params[:id])
    @movietitle = movie.title
    movie.destroy
  end
end
