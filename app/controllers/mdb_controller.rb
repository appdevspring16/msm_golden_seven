class MdbController < ApplicationController
  def directors
    @list_of_directors=Director.all
  end

  def actors
    @list_of_actors=Actor.all
  end

  def movies
    @list_of_movies=Movie.all
  end

  def show_movie
  end
end
