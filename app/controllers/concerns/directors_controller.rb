class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id] })
  end

  def destroy
    @director_to_delete = Director.find_by({ :id => params[:id] })
    @director_to_delete.destroy

  end

end
