class ActorsController < ApplicationController

  def index
    @actor_list = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])

    render("show")
  end
end
