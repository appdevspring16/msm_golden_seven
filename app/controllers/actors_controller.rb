class ActorsController < ApplicationController

  def new_form

  end

  def create_row
    at = Actor.new

    at.name = params[:name]
    at.dob = params[:dob]
    at.bio = params[:bio]
    at.image_url = params[:image_url]

    at.save

    redirect_to("/actors")
  end

  def index
    @actor_list = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])

    render("show")
  end

  def destroy
    at = Actor.find(params[:id])

    at.destroy

    redirect_to("/actors")
  end
end
