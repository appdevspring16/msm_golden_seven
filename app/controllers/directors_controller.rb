class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end


  def show
    @director = Director.find_by({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    director = Director.new
    director.name = params[:the_name]
    director.bio = params[:the_bio]
    director.dob = params[:the_dob]
    director.image_url = params[:the_image_url]

    director.save

    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    director = Director.find_by({ :id => params[:id]})
    director.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    director = Director.find_by({ :id => params[:id]})
    director.name = params[:the_name]
    director.bio = params[:the_bio]
    director.dob = params[:the_dob]
    director.image_url = params[:the_image_url]

    director.save

    redirect_to("http://localhost:3000/directors/#{director.id}")
  end

end
