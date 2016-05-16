class DirectorController < ApplicationController
  def newd
  end
  def create
    @director = Director.new
    @director.name = params["name"]
    @director.bio = params["bio"]
    @director.dob = params["dob"]
    @director.image_url = params["image_url"]
    @director.save
    redirect_to("http://localhost:3000/directors/"+@director.id.to_s)
  end
  def index
    @director = Director.all
  end
  def show
    @director = Director.find_by ({ :id => params["id"]})
  end
  def edit
    @director = Director.find_by ({ :id => params[:id]})
  end
  def update
    @director = Director.find_by ({ :id => params[:id]})
    @director.name = params["name"]
    @director.bio = params["bio"]
    @director.dob = params["dob"]
    @director.image_url = params["image_url"]
    @director.save
    redirect_to("http://localhost:3000/directors/"+@director.id.to_s)
  end

  def destroyd
    @director = Director.find_by ({ :id => params[:id]})
    @director.destroy
  end
end
