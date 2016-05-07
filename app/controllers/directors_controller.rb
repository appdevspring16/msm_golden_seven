class DirectorsController < ApplicationController

  def new_form

  end

  def create_row
    dr = Director.new

    dr.name = params[:name]
    dr.dob = params[:dob]
    dr.bio = params[:bio]
    dr.image_url = params[:image_url]

    dr.save

    redirect_to("/directors")
  end

  def index
    @director_list = Director.all
  end

  def show
    @director = Director.find(params[:id])

    render("show")
  end

  def destroy
    dr =Director.find(params[:id])

    dr.destroy

    redirect_to("/directors")
  end
end
