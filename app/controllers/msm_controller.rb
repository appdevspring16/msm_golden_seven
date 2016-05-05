class MsmController < ApplicationController

  def list
    if params["type"] == "movies"
      @list = Movie.all
    elsif params["type"] == "actors"
      @list = Actor.all
    elsif params["type"] == "directors"
      @list = Director.all
    end
    @columns = @list.column_names - ["id"] - ["created_at"] - ["updated_at"] - ["image_url"]
    render("list.html.erb")
  end

  def show
    if params["type"] == "movies"
      @item = Movie.find(params["id"])
      @columns = Movie.column_names - ["id"] - ["created_at"] - ["updated_at"] - ["image_url"]
    elsif params["type"] == "actors"
      @item = Actor.find(params["id"])
      @columns = Actor.column_names - ["id"] - ["created_at"] - ["updated_at"] - ["image_url"]
    elsif params["type"] == "directors"
      @item = Director.find(params["id"])
      @columns = Director.column_names - ["id"] - ["created_at"] - ["updated_at"] - ["image_url"]
    end
    render("show.html.erb")
  end

  def delete
    if params["type"] == "movies"
      i = Movie.find(params["id"])
    elsif params["type"] == "actors"
      i = Actor.find(params["id"])
    elsif params["type"] == "directors"
      i = Director.find(params["id"])
    end
    i.destroy
    redirect_to("/#{params["type"]}")
  end

  def new_form
    if params["type"] == "movies"
      @columns = Movie.columns
    elsif params["type"] == "actors"
      @columns = Actor.columns
    elsif params["type"] == "directors"
      @columns = Director.columns
    end
    @columns.delete_if {|x| x.name == "id" || x.name == "created_at" || x.name == "updated_at"}
    render("new_form.html.erb")
  end

  def edit_form
    if params["type"] == "movies"
      @columns = Movie.columns
      @item = Movie.find(params["id"])
    elsif params["type"] == "actors"
      @columns = Actor.columns
      @item = Actor.find(params["id"])
    elsif params["type"] == "directors"
      @columns = Director.columns
      @item = Director.find(params["id"])
    end
    @columns.delete_if {|x| x.name == "id" || x.name == "created_at" || x.name == "updated_at"}
    render("edit_form.html.erb")
  end

  def create
    if params["type"] == "movies"
      i = Movie.new
      i.title = params["the_title"]
      i.year = params["the_year"]
      i.duration = params["the_duration"]
      i.description = params["the_description"]
      i.image_url = params["the_image_url"]
    elsif params["type"] == "actors"
      i = Actor.new
      i.name = params["the_name"]
      i.bio = params["the_bio"]
      i.dob = params["the_dob"]
      i.image_url = params["the_image_url"]
    elsif params["type"] == "directors"
      i = Director.new
      i.name = params["the_name"]
      i.bio = params["the_bio"]
      i.dob = params["the_dob"]
      i.image_url = params["the_image_url"]
    end
    i.save
    redirect_to("/#{params["type"]}/#{params["id"]}")
  end

  def edit
    if params["type"] == "movies"
      i = Movie.find(params["id"])
      i.title = params["the_title"]
      i.year = params["the_year"]
      i.duration = params["the_duration"]
      i.description = params["the_description"]
      i.image_url = params["the_image_url"]
    elsif params["type"] == "actors"
      i = Actor.find(params["id"])
      i.name = params["the_name"]
      i.bio = params["the_bio"]
      i.dob = params["the_dob"]
      i.image_url = params["the_image_url"]
    elsif params["type"] == "directors"
      i = Director.find(params["id"])
      i.name = params["the_name"]
      i.bio = params["the_bio"]
      i.dob = params["the_dob"]
      i.image_url = params["the_image_url"]
    end
    i.save
    redirect_to("/#{params["type"]}/#{params["id"]}")
  end
end
