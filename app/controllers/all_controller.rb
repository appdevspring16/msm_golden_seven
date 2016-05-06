class AllController < ApplicationController
  def index
    type = params[:type].chop.capitalize.constantize
    @arrays = type.all
    @types = type.to_s
  end
  def show
    type = params[:type].chop.capitalize.constantize
    @types = type.to_s
    @id = type.find_by({ :id => params[:id]})
  end
  def delete
    name = params[:type]+"s"
    type = params[:type].capitalize.constantize
    unit = type.find_by({ :id => params[:id] })
    unit.destroy
    redirect_to("/#{name}")
  end
  def add
    @type = params[:type].chop.capitalize.constantize
    @type = @type.to_s
  end
  def insert
    type = params[:type].capitalize.constantize
    types = type.to_s
    if types == "Director"
      @types = type.new
      @types.dob = params[:dob]
      @types.name = params[:name]
      @types.bio = params[:bio]
      @types.image_url = params[:image_url]
      @types.save
    elsif types == "Actor"
      @types = type.new
      @types.dob = params[:dob]
      @types.name = params[:name]
      @types.bio = params[:bio]
      @types.image_url = params[:image_url]
      @types.save
    elsif types == "Movie"
      @types = type.new
      @types.title = params[:title]
      @types.year = params[:year]
      @types.duration = params[:duration]
      @types.description = params[:description]
      @types.image_url = params[:image_url]
      @types.save
    end
    @id= @types
    @types = types
    render("show")
  end
  def edit
    type = params[:type].chop.capitalize.constantize
    @types = type.to_s
    @id = type.find_by({ :id => params[:id]})
  end
  def update
    type = params[:type].capitalize.constantize
    @types = type.find(params[:id])
    types = type.to_s
    if types == "Director"
      @types.dob = params[:dob]
      @types.name = params[:name]
      @types.bio = params[:bio]
      @types.image_url = params[:image_url]
      @types.save
    elsif types == "Actor"
      @types.dob = params[:dob]
      @types.name = params[:name]
      @types.bio = params[:bio]
      @types.image_url = params[:image_url]
      @types.save
    elsif types == "Movie"
      @types.title = params[:title]
      @types.year = params[:year]
      @types.duration = params[:duration]
      @types.description = params[:description]
      @types.image_url = params[:image_url]
      @types.save
    end
    @id= @types
    @types = types
    render("show")
  end
end
