class MdbController < ApplicationController
  def movies
    @list_of_movies=Movie.all
  end

  def show_movie
    m = Movie.find_by({ :id => params[:id]})
    @movie = m
  end

  def create_movie
    m = Movie.new
    m.image_url = params[:image_url]
    m.title = params[:movie_title]
    m.year = params[:movie_year]
    m.duration = params[:movie_duration]
    m.description =params[:movie_description]
    m.save
    redirect_to("http://localhost:3000/movies")
  end

  def edit_form_movie
    m = Movie.find_by({ :id => params[:id]})
    @movie = m
  end

  def update_row_movie
    m = Movie.find_by({ :id => params[:id]})
    @movie = m
    m.title = params[:movie_title]
    m.year = params[:movie_year]
    m.duration = params[:movie_duration]
    m.description =params[:movie_description]
    m.save
    redirect_to("http://localhost:3000/movies")
  end

  def delete_movie
    m = Movie.find_by({ :id => params[:id]})
    @movie = m
    m.destroy
  end
end
