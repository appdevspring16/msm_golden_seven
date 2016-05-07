Rails.application.routes.draw do
                                 #DIRECTORS
  get("/", { :controller => "directors", :action => "index" })
  #to add directors
  get("/directors/new_form", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })

  #edit directors
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })

#to view directors
  get("/directors",  { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })

#to delete directors
  get("/directors/delete_director/:id", { :controller => "directors", :action => "delete" })

                                 #ACTORS
  #to add actors
  get("/actors/new_form", { :controller => "actors", :action => "new_form" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })

  #edit actors
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })

#to view actors
  get("/actors",  { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "show" })

#to delete actors
  get("/actors/delete_actor/:id", { :controller => "actors", :action => "delete" })

  #to view movies
    get("/movies",  { :controller => "movies", :action => "index" })







end
