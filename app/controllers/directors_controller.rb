class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id] })
  end

  def delete

@director = Director.find_by({ :id => params[:id] })
@director.destroy

  end








end
