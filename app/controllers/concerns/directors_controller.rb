class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id] })
  end

  def destroy
    @director_to_destroy = Director.find(params[:id])
    @director_to_destroy.destroy
  end

  def new_form
  end

  def create_row
    @director = Director.new
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]

    @director.save

    render "show"
end




end
