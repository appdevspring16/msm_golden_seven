Rails.application.routes.draw do
  #Default route to movies
  get("/", { :controller => "movies", :action => "index"})

  #movies
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "show"})

  #directors
  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "show"})
  
  #actors
  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "show"})
end
