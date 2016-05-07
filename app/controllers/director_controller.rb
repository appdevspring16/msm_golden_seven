class DirectorController < ApplicationController
  def directors
    @list_of_directors=Director.all
  end

  def create_director
    d=Director.new
    d.name=params[:director_name]
    d.dob=params[:director_dob]
    d.bio=params[:director_bio]
    d.image_url=params[:image_url]
    d.save
    redirect_to("http://localhost:3000/directors")
  end

  def show_director
    d=Director.find_by({ :id => params[:id]})
    @director = d
  end

  def edit_form
    d=Director.find_by({ :id => params[:id]})
    @director = d
  end

  def update_row
    d=Director.find_by({ :id => params[:id]})
    d.name=params[:director_name]
    d.dob=params[:director_dob]
    d.bio=params[:director_bio]
    d.image_url=params[:image_url]
    d.save
    redirect_to("http://localhost:3000/directors")
  end

  def delete_director
    d = Director.find_by({ :id => params[:id]})
    @director = d
    d.destroy
  end
end
