Rails.application.routes.draw do

#Routes to read photos
get("/directors", { :controller => "directors", :action => "index" })
get("/directors/:id", { :controller => "directors", :action => "show"})


end
