class GoldenController < ApplicationController


# CREATE

def actors_create
  render("actors_create.html.erb")
end

def actors_new
  i = Actor.new
  i.name = params[:name]
  i.dob = params[:dob]
  i.bio = params[:bio]
  i.image_url = params[:image_url]
  i.save
  redirect_to("http://localhost:3000/actors")
end

def directors_create
  render("directors_create.html.erb")
end

def directors_new
  i = Director.new
  i.name = params[:name]
  i.dob = params[:dob]
  i.image_url = params[:image_url]
  i.bio = params[:bio]
  i.save
  redirect_to("http://localhost:3000/directors")
end

def movies_create
  render("movies_create.html.erb")
end

def movies_new
  i = Movie.new
  i.title = params[:title]
  i.year = params[:year]
  i.image_url = params[:image_url]
  i.duration = params[:duration]
  i.description = params[:description]
  i.save
  redirect_to("http://localhost:3000/movies")
end

# DELETE

  def actors_delete
    i = Actor.find_by({:id => params[:id]})
    i.destroy
    redirect_to("http://localhost:3000/actors/")
  end

  def directors_delete
    i = Director.find_by({:id => params[:id]})
    i.destroy
    redirect_to("http://localhost:3000/directors/")
  end

  def movies_delete
    i = Movie.find_by({:id => params[:id]})
    i.destroy
    redirect_to("http://localhost:3000/movies/")
  end

# EDIT

def actors_edit
  @i = Actor.find_by({:id => params[:id]})
  render("actors_edit.html.erb")
end

def actors_change
  i = Actor.find_by({:id => params[:id]})
  i.name = params[:name]
  i.dob = params[:dob]
  i.bio = params[:bio]
  i.image_url = params[:image_url]
  i.save
  redirect_to("http://localhost:3000/actors")
end

def directors_edit
  @i = Director.find_by({:id => params[:id]})
  render("directors_edit.html.erb")
end

def directors_change
  i = Director.find_by({:id => params[:id]})
  i.name = params[:name]
  i.dob = params[:dob]
  i.bio = params[:bio]
  i.image_url = params[:image_url]
  i.save
  redirect_to("http://localhost:3000/directors")
end

def movies_edit
  @i = Movie.find_by({:id => params[:id]})
  render("movies_edit.html.erb")
end

def movies_change
  i = Movie.find_by({:id => params[:id]})
  i.title = params[:title]
  i.year = params[:year]
  i.image_url = params[:image_url]
  i.duration = params[:duration]
  i.description = params[:description]
  i.save
  redirect_to("http://localhost:3000/movies")
end


# READ

  def directors
    @list_of_directors = Director.all
    render("directors.html.erb")

  end

  def directors_show
    @i = Director.find_by({:id => params[:id]})
    render("directors_show.html.erb")

  end

  def actors
    @list_of_actors = Actor.all
    render("actors.html.erb")

  end

  def actors_show
    @i = Actor.find_by({:id => params[:id]})
    render("actors_show.html.erb")

  end

  def movies
    @list_of_movies = Movie.all
    render("movies.html.erb")

  end

  def movies_show
    @i = Movie.find_by({:id => params[:id]})
    render("movies_show.html.erb")

  end

end
