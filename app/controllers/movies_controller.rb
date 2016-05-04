class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find(params["id"])
    render("show.html.erb")
  end

  def delete
    m = Movie.find(params["id"])
    m.destroy
    redirect_to("/movies")
  end

  def new_form
    render("new_form.html.erb")
  end

  def edit_form
    @movie = Movie.find(params["id"])
    render("edit_form.html.erb")
  end

  def create_movie
    m = Movie.new
    m.title = params["the_title"]
    m.year = params["the_year"]
    m.duration = params["the_duration"]
    m.description = params["the_description"]
    m.image_url = params["the_image_url"]
    m.save
    redirect_to("/movies")
  end

  def edit_movie
    m = Movie.find(params["id"])
    m.title = params["the_title"]
    m.year = params["the_year"]
    m.duration = params["the_duration"]
    m.description = params["the_description"]
    m.image_url = params["the_image_url"]
    m.save
    redirect_to("/movies")
  end
end
