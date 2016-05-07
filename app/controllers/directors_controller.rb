class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def new_form

  end
  def create_director
    d= Director.new
    d.name = params[:director_name]
    d.dob = params[:director_dob]
    d.bio = params[:director_bio]
    d.image_url = params[:director_url]
    d.save
    redirect_to("/directors")
  end
  def view
    @director=Director.find_by({ :id=> params[:id]})
  end
  def destroy
    d = Director.find(params[:id])
    d.destroy
    redirect_to("/directors")
  end
  def edit_form
  @director = Director.find_by({ :id => params[:id]})

end
def update_row
  d = Director.find_by({ :id => params[:id]})
  d.name = params[:director_name]
  d.dob = params[:director_dob]
  d.bio = params[:director_bio]
  d.image_url = params[:director_url]
  d.save

  redirect_to("/directors/"+params[:id])
end
end
