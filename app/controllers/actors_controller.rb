class ActorsController < ApplicationController

  def index
    @actor_list = Actor.all
  end

end
