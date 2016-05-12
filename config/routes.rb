Rails.application.routes.draw do

#Routes for the Director resource

#Create
get("/directors/new_form", { :controller => "directors", :action => "new_form"})
get("/create_director", { :controller => "directors", :action => "create_row"} )

#Read
get("/directors", { :controller => "directors", :action => "index" })
get("/directors/:id", { :controller => "directors", :action => "show"})

#Update
get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form"})
get("/update_director/:id", { :controller => "directors", action => "update_row"})

#Delete
get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

#Routes for the Actor resource

#Create
get("/actors/new_form", { :controller => "actors", :action => "new_form"})
get("/create_actor", { :controller => "actors", :action => "create_row"} )

#Read
get("/actors", { :controller => "actors", :action => "index" })
get("/actors/:id", { :controller => "actors", :action => "show"})

#Update
get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form"})
get("/update_actor/:id", { :controller => "actors", action => "update_row"})

#Delete
get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})
end
