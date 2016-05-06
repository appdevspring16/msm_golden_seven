class MoviesController < ApplicationController

  def movie_index
    @all_movies = Movie.all
    render("movies.html.erb")
    # render("movies.html.erb")
  end

  def new_form

  end

  def create
    @movie = Movie.new

    @movie.title = params[:the_title]
    @movie.year  = params[:the_year]
    @movie.duration  = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]

    @movie.save
    redirect_to("/movies")
  end
  
  def show
    @movie = Movie.find(params[:id])
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])


    @movie.title = params[:the_title]
    @movie.year  = params[:the_year]
    @movie.duration  = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]


    @movie.save
    redirect_to("/movies")
  end

  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to("/movies")
  end

end
