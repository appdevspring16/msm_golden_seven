class ActorsController< ApplicationController

 def index
@actors=Actor.all
 end


 def show
@actors=Actor.find_by({:id=>params[:id]})
 end

 def new_form
@actors=Actor.find_by({:id=>params[:id]})
 end


 def create_row
   @actors=Actor.new
   @actors.dob=params[:dob]
   @actors.name=params[:name]
   @actors.bio=params[:bio]
   @actors.image_url=params[:image_url]
   @actors.save

   redirect_to("/actors/#{@actors.id}")
 end


 def edit_form
   @actors=Actor.find_by({:id=>params[:id]})
 end


 def update_row
@actors=Actor.find_by({:id=>params[:id]})
@actors.dob=params[:dob]
@actors.name=params[:name]
@actors.bio=params[:bio]
@actors.image_url=params[:image_url]
@actors.save

redirect_to("/actors/#{@actors.id}")
 end


 def destroy
@actors=Actor.find_by({:id=>params[:id]})
@actors.destroy
 end





 end
