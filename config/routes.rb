Rails.application.routes.draw do
  #Create Director
  get("/directors/new_form", { :controller => "director", :action => "newd" })
  get("/create_director", { :controller => "director", :action => "create" })

  #Read Director
  get("/directors", { :controller => "director", :action => "index" })
  get("/directors/:id", { :controller => "director", :action => "show" })

  #Update Director
  get("/update_director/:id", { :controller => "director", :action => "update" })
  get("/directors/:id/edit", { :controller => "director", :action => "edit" })

  #Delete Director
  get("/delete_director/:id", { :controller => "director", :action => "destroyd" })

  #Create Actor
  get("/actors/new_form", { :controller => "actor", :action => "newd" })
  get("/create_actor", { :controller => "actor", :action => "create" })

  #Read Actor
  get("/actors", { :controller => "actor", :action => "index" })
  get("/actors/:id", { :controller => "actor", :action => "show" })

  #Update Actor
  get("/update_actor/:id", { :controller => "actor", :action => "update" })
  get("/actors/:id/edit", { :controller => "actor", :action => "edit" })

  #Delete Actor
  get("/delete_actor/:id", { :controller => "actor", :action => "destroyd" })

  #Create Movie
  get("/movies/new_form", { :controller => "movie", :action => "newd" })
  get("/create_movie", { :controller => "movie", :action => "create" })

  #Read Movie
  get("/movies", { :controller => "movie", :action => "index" })
  get("/movies/:id", { :controller => "movie", :action => "show" })

  #Update Movie
  get("/update_movie/:id", { :controller => "movie", :action => "update" })
  get("/movies/:id/edit", { :controller => "movie", :action => "edit" })

  #Delete Movie
  get("/delete_movie/:id", { :controller => "movie", :action => "destroyd" })

end
