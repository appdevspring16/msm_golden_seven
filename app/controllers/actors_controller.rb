class ActorsController < ApplicationController

def index
  @actors = Actor.all
end


def show
  @actor = Actor.find(params[:id])
end

def destroy
end

def new_form
end

def create_form
  # t.string:name
  # t.text :bio
  # t.string :dob
  # t.string :image_url
end

def edit_form
end

def update_row
end





end
