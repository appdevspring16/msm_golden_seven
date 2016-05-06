class ActorController<ApplicationController
  def actor_index
@list_of_actors = Actor.all

render("actor_index.html.erb")

    end
def actor_show
  @actor_id = params[:id]
 @actor_name = Actor.find(@actor_id).name
@actor_dob = Actor.find(@actor_id).dob
@actor_bio = Actor.find(@actor_id).bio
@actor_url = Actor.find(@actor_id).image_url

  render("actor_show.html.erb")
end

def actor_delete
    @actor_id = params[:id]
@actor_name = Actor.find(@actor_id).name
    i = Actor.find(@actor_id)
    i.destroy
    render("actor_delete.html.erb")

end

def actor_new_form

render("actor_new_form.html.erb")
  end

def actor_new_actor
@actor_dob = params[:dob]
@actor_name = params[:name]
@actor_bio = params[:bio]
@actor_url = params[:image_url]

x = Actor.new
x.dob = @actor_dob
x.name = @actor_name
x.bio = @actor_bio
x.image_url = @actor_url
x.save

@actor_id = Actor.find_by({:name=> @actor_name}).id

render("actor_new_actor.html.erb")
end

def actor_edit_form

  @actor_id=params[:id]
  @actor_dob = Actor.find_by({:id=>@actor_id}).dob
  @actor_name = Actor.find_by({:id=>@actor_id}).name
  @actor_bio = Actor.find_by({:id=>@actor_id}).bio
  @actor_url = Actor.find_by({:id=>@actor_id}).image_url

  render("actor_edit_form.html.erb")

end

def actor_edit_actor

  @actor_id=params[:id]
  @actor_dob = params[:dob]
  @actor_name = params[:name]
  @actor_bio = params[:bio]
  @actor_url = params[:image_url]

  x=Actor.find(@actor_id)
  x.name = @actor_name
  x.dob = @actor_dob
  x.bio = @actor_bio
  x.image_url = @actor_url
  x.save

  render("actor_edit_actor.html.erb")

end

end
