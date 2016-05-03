class DirectorsController < ApplicationController

def index
  @director = Director.all
end


def show
  @director = Director.find(params[:id])
end

def destroy
end

def new_form
end

def create_form
end

def edit_form
end

def update_row
end





end
