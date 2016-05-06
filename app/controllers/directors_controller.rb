class DirectorsController < ApplicationController
  def index
    @director_list = Director.all
  end
end
