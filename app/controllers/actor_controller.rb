class ActorController < ApplicationController
  def newd
  end
  def create
    @actor = Actor.new
    @actor.name = params["name"]
    @actor.bio = params["bio"]
    @actor.dob = params["dob"]
    @actor.image_url = params["image_url"]
    @actor.save
    redirect_to("http://localhost:3000/actors/"+@actor.id.to_s)
  end
  def index
    @actor = Actor.all
  end
  def show
    @actor = Actor.find_by ({ :id => params["id"]})
  end
  def edit
    @actor = Actor.find_by ({ :id => params[:id]})
  end
  def update
    @actor = Actor.find_by ({ :id => params[:id]})
    @actor.name = params["name"]
    @actor.bio = params["bio"]
    @actor.dob = params["dob"]
    @actor.image_url = params["image_url"]
    @actor.save
    redirect_to("http://localhost:3000/actors/"+@actor.id.to_s)
  end

  def destroyd
    @actor = Actor.find_by ({ :id => params[:id]})
    @actor.destroy
  end
end
