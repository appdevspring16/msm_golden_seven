Rails.application.routes.draw do

#Routes for the Director resource
#Read
get("/directors", { :controller => "directors", :action => "index" })
get("/directors/:id", { :controller => "directors", :action => "show"})

#Delete
get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

#Create
get("/directors/new_form", { :controller => "directors", :action => "new_form"})
get("/create_director", { :controller => "directors", :action => "create_row"} )
end
