class MoviesController < ApplicationController
def index
  @movies=Movie.all
end

def new_form
end

def edit_form
    @movie=Movie.find(params[:id])
end

def destroy
  @movie=Movie.find(params[:id])
  @movie.destroy
  @movie.save
  redirect_to("http://localhost:3000")
end


def show
@movie=Movie.find(params[:id])
end

def update_row
@movie=Movie.find(params[:id])
@movie.title=params[:title]
@movie.description=params[:description]
@movie.image_url=params[:image_url]
@movie.year=params[:year]
@movie.duration=params[:duration]
@movie.save
redirect_to("http://localhost:3000")
end

def create_row
@movie=Movie.new
@movie.title=params[:title]
@movie.description=params[:description]
@movie.image_url=params[:image_url]
@movie.year=params[:year]
@movie.duration=params[:duration]
@movie.save
redirect_to("http://localhost:3000")
end

end
