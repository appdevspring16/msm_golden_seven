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
end
