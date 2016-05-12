class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id] })
  end

  def destroy
    @movie_to_destroy = Movie.find(params[:id])
    @movie_to_destroy.destroy
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.name = params[:name]
    @movie.bio = params[:bio]
    @movie.dob = params[:dob]
    @movie.image_url = params[:image_url]

    @movie.save

    render "show"
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie = Movie.find(params[:id])

    @movie.dob = params[:dob]
    @movie.name = params[:name]
    @movie.bio = params[:bio]
    @movie.image_url = params[:image_url]

    @movie.save

    render("show")
  end
end
