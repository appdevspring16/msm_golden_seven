class MovieController < ApplicationController
  def newd
  end
  def create
    @movie = Movie.new
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]
    @movie.save
    redirect_to("http://localhost:3000/movies/"+@movie.id.to_s)
  end
  def index
    @movie = Movie.all
  end
  def show
    @movie = Movie.find_by ({ :id => params["id"]})
  end
  def edit
    @movie = Movie.find_by ({ :id => params[:id]})
  end
  def update
    @movie = Movie.find_by ({ :id => params[:id]})
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]
    @movie.save
    redirect_to("http://localhost:3000/movies/"+@movie.id.to_s)
  end

  def destroyd
    @movie = Movie.find_by ({ :id => params[:id]})
    @movie.destroy
  end
end
