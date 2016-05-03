class MoviesController < ApplicationController

def index
  @movie=Movie.all
end


def show
  @movie=Movie.find(params[:id])
end

def destroy
end

def new_form
end

def create_form
end

def edit_form
end

def update_row
end





end
