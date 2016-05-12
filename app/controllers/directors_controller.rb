class DirectorsController < ApplicationController
  def index
    @directors = Director.all
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
    render ("show")
  end
end
