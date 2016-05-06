class ActorsController < ApplicationController

  def actor_index
    @all_actors = Actor.all
    render("actors.html.erb")
    # render("actors.html.erb")
  end

  def new_form

  end

  def create
    @actor = Actor.new

    @actor.name = params[:the_name]
    @actor.dob  = params[:the_dob]
    @actor.bio  = params[:the_bio ]
    @actor.image_url = params[:the_image_url]

    @actor.save
    redirect_to("/actors")
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.name = params[:the_name]
    @actor.dob  = params[:the_dob]
    @actor.bio  = params[:the_bio ]
    @actor.image_url = params[:the_image_url]

    @actor.save
    redirect_to("/actors")
  end

  def delete
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to("/actors")
  end

end
