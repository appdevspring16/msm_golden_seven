class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id] })

  end

  def delete

    @movie = Movie.find_by({ :id => params[:id] })
    @movie.destroy

  end

  def new_form

  end


  def create_row
    @movie = Movie.new
    @movie.image_url = params[:image_url]
    @movie.dob = params[:dob]
    @movie.name = params[:name]
    @movie.bio = params[:bio]


    @movie.save

  render("show.html.erb")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id] })
  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id] })
    @movie.image_url = params[:image_url]
    @movie.dob = params[:dob]
    @movie.name = params[:name]
    @movie.bio = params[:bio]


    @movie.save

  render("show.html.erb")




  end








end
