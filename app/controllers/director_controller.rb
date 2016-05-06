class DirectorController<ApplicationController
  def director_index
@list_of_directors = Director.all

render("director_index.html.erb")

    end
def director_show
  @director_id = params[:id]
 @director_name = Director.find(@director_id).name
@director_dob = Director.find(@director_id).dob
@director_bio = Director.find(@director_id).bio
@director_url = Director.find(@director_id).image_url

  render("director_show.html.erb")
end

def director_delete
    @director_id = params[:id]
@director_name = Director.find(@director_id).name
    i = Director.find(@director_id)
    i.destroy
    render("director_delete.html.erb")

end

def director_new_form

render("director_new_form.html.erb")
  end

def director_new_director
@director_dob = params[:dob]
@director_name = params[:name]
@director_bio = params[:bio]
@director_url = params[:image_url]

x = Director.new
x.dob = @director_dob
x.name = @director_name
x.bio = @director_bio
x.image_url = @director_url
x.save

@director_id = Director.find_by({:name=> @director_name}).id

render("director_new_director.html.erb")
end

def director_edit_form

  @director_id=params[:id]
  @director_dob = Director.find_by({:id=>@director_id}).dob
  @director_name = Director.find_by({:id=>@director_id}).name
  @director_bio = Director.find_by({:id=>@director_id}).bio
  @director_url = Director.find_by({:id=>@director_id}).image_url

  render("director_edit_form.html.erb")

end

def director_edit_director

  @director_id=params[:id]
  @director_dob = params[:dob]
  @director_name = params[:name]
  @director_bio = params[:bio]
  @director_url = params[:image_url]

  x=Director.find(@director_id)
  x.name = @director_name
  x.dob = @director_dob
  x.bio = @director_bio
  x.image_url = @director_url
  x.save

  render("director_edit_director.html.erb")

end

end
