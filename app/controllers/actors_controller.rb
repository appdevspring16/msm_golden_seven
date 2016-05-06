class ActorsController < ApplicationController
def index
  @actors=Actor.all
end

def new_form
end

def edit_form
    @actor=Actor.find(params[:id])
end

def destroy
  @actor=Actor.find(params[:id])
  @actor.destroy
  @actor.save
  redirect_to("http://localhost:3000/actors")
end

def show
  @actor=Actor.find(params[:id])
end

def update_row
@actor=Actor.find(params[:id])
@actor.name=params[:name]
@actor.bio=params[:bio]
@actor.image_url=params[:image_url]
@actor.dob=params[:dob]
@actor.save
redirect_to("http://localhost:3000/actors")
end

def create_row
@actor=Actor.new
@actor.name=params[:name]
@actor.bio=params[:bio]
@actor.image_url=params[:image_url]
@actor.dob=params[:dob]
@actor.save
redirect_to("http://localhost:3000/actors")
end

end
