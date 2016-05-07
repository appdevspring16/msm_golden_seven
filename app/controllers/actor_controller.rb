class ActorController < ApplicationController
  def actors
    @list_of_actors=Actor.all

  end

  def create_actor
    a=Actor.new
    a.name = params[:actor_name]
    a.dob = params[:actor_dob]
    a.bio = params[:actor_bio]
    a.image_url = params[:image_url]
    a.save
    redirect_to("http://localhost:3000/actors")
  end

  def show_actor
    a = Actor.find_by({ :id => params[:id]})
    @actor = a
  end

  def edit_form
    a = Actor.find_by({ :id => params[:id]})
    @actor = a
  end

  def update_row
    a = Actor.find_by({ :id => params[:id]})
    @actor = a
    a.name = params[:actor_name]
    a.dob = params[:actor_dob]
    a.bio = params[:actor_bio]
    a.image_url = params[:image_url]
    a.save
    redirect_to("http://localhost:3000/actors")
  end

  def delete_actor
    a = Actor.find_by({ :id => params[:id]})
    @actor=a
    a.destroy
  end
end
