Rails.application.routes.draw do

#Routes for the Director resource
#Read
get("/directors", { :controller => "directors", :action => "index" })
get("/directors/:id", { :controller => "directors", :action => "show"})

#Delete
get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

end
