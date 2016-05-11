Rails.application.routes.draw do
  #LANDING PAGE
  get("/",{:controller=>"movies",:action=>"index"})

  #DIRECTORS

  #Routes to CREATE directors
  get("/directors/new_form",     { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })

  #Routes to EDIT directors
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })

  # Routes to READ directors
  get("/directors",           { :controller => "directors", :action => "index" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })

  #Routes to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  #ACTORS

  #Routes to CREATE actors
  get("/actors/new_form",     { :controller => "actors", :action => "new_form" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })

  #Routes to EDIT actors
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })

  # Routes to READ actors
  get("/actors",           { :controller => "actors", :action => "index" })
  get("/actors/:id",    { :controller => "actors", :action => "show" })

  #Routes to DELETE actors
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })


  #MOVIES

  #Routes to CREATE movies
  get("/movies/new_form",     { :controller => "movies", :action => "new_form" })
  get("/create_movie", { :controller => "movies", :action => "create_row" })

  #Routes to EDIT movies
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

  # Routes to READ movies
  get("/movies",           { :controller => "movies", :action => "index" })
  get("/movies/:id",    { :controller => "movies", :action => "show" })

  #Routes to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

end
