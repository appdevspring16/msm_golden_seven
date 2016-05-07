Rails.application.routes.draw do
  #Default route to movies
  get("/", { :controller => "movies", :action => "index"})

  #movies
  get("/movies/new_form", { :controller => "movies", :action => "new_form"})
  get("/create_movie", { :controller => "movies", :action => "create_row"})

  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "show"})

  get("/delete_movie/:id", { :controller => "movies", :action => "destroy"})

  #directors
  get("/directors/new_form", { :controller => "directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "create_row"})

  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "show"})

  get("/delete_director/:id", { :controller => "directors", :action => "destroy"})

  #actors
  get("/actors/new_form", { :controller => "actors", :action => "new_form"})
  get("/create_actor", { :controller => "actors", :action => "create_row"})


  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "show"})

  get("/delete_actor/:id", { :controller => "actors", :action => "destroy"})
end
