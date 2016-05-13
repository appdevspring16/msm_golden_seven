class DirectorsController < ApplicationController

  def index
    @director = Director.all
  end

  def show
    @show = Director.find(params[:id])
  end

  def new_director


  end

  def create_row
    nd = Director.new
    nd.dob = params[:the_dob]
    nd.name = params[:the_name]
    nd.bio = params[:the_bio]
    nd.image_url = params[:the_image]
    nd.save

    redirect_to("/directors")

  end

  def edit_form
    @edit = Director.find(params[:id])
  end

  def update_row
    ud = Director.find(params[:id])
    ud.dob = params[:the_dob]
    ud.name = params[:the_name]
    ud.bio = params[:the_bio]
    ud.image_url = params[:the_image]
    ud.save

    redirect_to("/directors")

  end



end
