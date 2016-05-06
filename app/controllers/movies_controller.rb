class MoviesController < ApplicationController
  def index
    @movies = Movie.all


  end

  def show
      @movie = Movie.find(params[:id])
    end


end
# Actor rails g model actor name:string bio:text dob:string image_url:string
