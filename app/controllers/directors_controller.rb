class DirectorsController < ApplicationController

  def new_form
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show")
  end

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id]})
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[":dob"]
    @director.name = params[":name"]
    @director.bio = params[":bio"]
    @director.image_url = params[":image_url"]

    @director.save

    render("show")
  end

  def destroy
    @director = Director.find_by({ :id => params[:id]})
    @director.destroy

    redirect_to("http://localhost:3000/directors")

  end
end
