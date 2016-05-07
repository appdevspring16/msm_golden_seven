class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def new_form

  end
  def create_actor
    a= Actor.new
    a.name = params[:actor_name]
    a.dob = params[:actor_dob]
    a.bio = params[:actor_bio]
    a.image_url = params[:actor_url]
    a.save
    redirect_to("/actors")
  end
  def view
    @actor=Actor.find_by({ :id=> params[:id]})
  end
  def destroy
    a = Actor.find(params[:id])
    a.destroy
    redirect_to("/actors")
  end
  def edit_form
  @actor = Actor.find_by({ :id => params[:id]})

end
def update_row
  a = Actor.find_by({ :id => params[:id]})
  a.name = params[:actor_name]
  a.dob = params[:actor_dob]
  a.bio = params[:actor_bio]
  a.image_url = params[:actor_url]
  a.save

  redirect_to("/actors/"+params[:id])
end
end
