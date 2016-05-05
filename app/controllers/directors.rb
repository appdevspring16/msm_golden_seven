class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def new_form
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    redirect_to("http://localhost:3000/directors")

  def show
    @director = Director.find_by({:id => params[:id]})
  end


end
