class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({ :id => params[:id] })

  end

  def delete

    @director = Director.find_by({ :id => params[:id] })
    @director.destroy

  end

  def new_form

  end


  def create_row
    @director = Director.new
    @director.image_url = params[:image_url]
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]


    @director.save

  render("show.html.erb")
  end

  def edit_form
    @director = Director.find_by({ :id => params[:id] })
  end

  def update_row
    @director = Director.find_by({ :id => params[:id] })
    @director.image_url = params[:image_url]
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]


    @director.save

  render("show.html.erb")




  end








end
