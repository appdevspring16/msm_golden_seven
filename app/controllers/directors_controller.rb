class DirectorsController < ApplicationController

  def director_index
    @all_directors = Director.all
    render("directors.html.erb")
    # render("directors.html.erb")
  end

  def new_form

  end

  def create
    @director = Director.new

    @director.name = params[:the_name]
    @director.dob  = params[:the_dob]
    @director.bio  = params[:the_bio ]
    @director.image_url = params[:the_image_url]

    @director.save
    redirect_to("/directors")
  end

  def show
    @director = Director.find(params[:id])
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    @director.name = params[:the_name]
    @director.dob  = params[:the_dob]
    @director.bio  = params[:the_bio ]
    @director.image_url = params[:the_image_url]
    
    @director.save
    redirect_to("/directors")
  end

  def delete
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to("/directors")
  end

end
