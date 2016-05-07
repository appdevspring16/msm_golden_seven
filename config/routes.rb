Rails.application.routes.draw do
  #Default route to movies
  get("/", { :controller => "movies", :action => "index"})

  #movies
  get("/movies/new_form", { :controller => "movies", :action => "new_form"})

  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "show"})

  get("/delete_movie/:id", { :controller => "movies", :action => "destroy"})

  #directors
  get("/directors/new_form", { :controller => "directors", :action => "new_form"})

  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "show"})

  get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

  #actors
  get("/actors/new_form", { :controller => "actors", :action => "new_form"})

  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "show"})

  get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})
end
