class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

def show
@actor = Actor.find(params[:id])
end

def destroy
  @actor_to_destroy = Actor.find(params[:id])
  @actor_to_destroy.destroy
end

def new_form
end

def create_row
  @actor = Actor.new
  @actor.dob = params[:dob]
  @actor.name = params[:name]
  @actor.bio = params[:bio]
  @actor.image_url = params[:image_url]

  @actor.save
  render "show"
end

def edit_form
  @actor = Actor.find(params[:id])
end

end
