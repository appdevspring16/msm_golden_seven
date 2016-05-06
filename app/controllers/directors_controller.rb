class DirectorsController < ApplicationController
def index
  @directors=Director.all
end

def new_form
end

def edit_form
    @director=Director.find(params[:id])
end

def destroy
  @director=Director.find(params[:id])
  @director.destroy
  @director.save
  redirect_to("http://localhost:3000/directors")
end

def show
  @director=Director.find(params[:id])
end

def update_row
@director=Director.find(params[:id])
@director.name=params[:name]
@director.bio=params[:bio]
@director.image_url=params[:image_url]
@director.dob=params[:dob]
@director.save
redirect_to("http://localhost:3000/directors")
end

def create_row
@director=Director.new
@director.name=params[:name]
@director.bio=params[:bio]
@director.image_url=params[:image_url]
@director.dob=params[:dob]
@director.save
redirect_to("http://localhost:3000/directors")
end

end
