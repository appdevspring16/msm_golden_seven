Rails.application.routes.draw do
  #Default route to movies
  get("/", { :controller => "movies", :action => "index"})

  #movies
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "show"})

  get("/delete_movie/:id", { :controller => "movies", :action => "destroy"})

  #directors
  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "show"})

  get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

  #actors
  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "show"})

  get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})
end
