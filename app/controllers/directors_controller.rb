class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

#   def new_form
#
#   end
#   def create_movie
#     m = Movie.new
#     m.title = params[:movie_title]
#     m.year = params[:movie_year]
#     m.duration = params[:movie_duration]
#     m.description = params[:movie_description]
#     m.image_url = params[:movie_url]
#     m.save
#     redirect_to("/movies")
#   end
  def view
    @director=Director.find_by({ :id=> params[:id]})
  end
#   def destroy
#     m = Movie.find(params[:id])
#     m.destroy
#     redirect_to("/movies")
#   end
#   def edit_form
#   @movie = Movie.find_by({ :id => params[:id]})
#
# end
# def update_row
#   m = Movie.find_by({ :id => params[:id]})
#   m.title = params[:movie_title]
#   m.year = params[:movie_year]
#   m.duration = params[:movie_duration]
#   m.description = params[:movie_description]
#   m.image_url = params[:movie_url]
#   m.save
#
#   redirect_to("/movies/"+params[:id])
# end
end
