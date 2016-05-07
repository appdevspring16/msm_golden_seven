Rails.application.routes.draw do
  get("/", { :controller => "movies", :action => "index" })

  # Routes to CREATE Movies
  get("/movies/new_form", { :controller => "movies", :action => "new_form"})
  get("/create_movie", { :controller => "movies", :action => "create_movie"})

  # Routes to READ Movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "view" })



  # Routes to EDIT Movies
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

  # Routes to DELETE Movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

  # Routes to CREATE Directors
  get("/directors/new_form", { :controller => "directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "create_director"})

  # # Routes to READ Directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "view" })

  # Routes to EDIT Directors
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })

  # Routes to DELETE Directors
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  # Routes to CREATE Actors
  get("/actors/new_form", { :controller => "actors", :action => "new_form"})
  get("/create_actor", { :controller => "actors", :action => "create_actor"})

  # # Routes to READ Actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "view" })

  # Routes to EDIT Actors
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })

  # Routes to DELETE Actors
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

end
