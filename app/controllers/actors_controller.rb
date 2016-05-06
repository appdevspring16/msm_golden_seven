class ActorsController < ApplicationController

  def index
    @actor_list = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])

    render("show")
  end

  def destroy
    at =Actor.find(params[:id])

    at.destroy

    redirect_to("/actors")
  end
end
