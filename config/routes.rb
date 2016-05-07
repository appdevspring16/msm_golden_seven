Rails.application.routes.draw do

#to view directors
  get("/directors",  :controller => "directors", :action => "index" )
  get("/directors/:id", { :controller => "directors", :action => "show" })

#to delete directors
  get("/directors/delete_director/:id", { :controller => "directors", :action => "delete" })

#to add directors
    get("/directors/new_form", { :controller => "directors", :action => "create_row" })



end
