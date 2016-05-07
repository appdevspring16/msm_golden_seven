Rails.application.routes.draw do
  get("/", { :controller => "mdb", :action => "movies" })

  # Director routes
  get("/directors",                     { :controller => "director", :action => "directors" })
  get("/directors/new_form",            { :controller => "director", :action => "new_form"})
  get("/create_director",               { :controller => "director", :action=>  "create_director"})
  get("/update_director/:id",           { :controller => "director", :action=>  "update_row"})
  get("/directors/:id",                 { :controller => "director", :action => "show_director" })
  get("/directors/:id/edit",       { :controller => "director", :action => "edit_form" })
    get("/delete_director/:id",              { :controller => "director", :action => "delete_director"})


  #Actor routes
  get("/create_actor",                  { :controller => "actor", :action => "create_actor"})
  get("/actors",                        { :controller => "actor", :action => "actors" })
  get("/actors/new_form",               { :controller => "actor", :action => "new_form"})
  get("/actors/:id",                    { :controller => "actor", :action => "show_actor" })
  get("/actors/:id/edit",              { :controller => "actor", :action => "edit_form"})
  get("/update_actor/:id",              { :controller => "actor", :action => "update_row"})
  get("/delete_actor/:id",              { :controller => "actor", :action => "delete_actor"})

  #Movie routes
  get("/create_movie",                  { :controller => "mdb", :action => "create_movie"})
  get("/movies",                        { :controller => "mdb", :action => "movies"})
  get("/movies/new_form",               { :controller => "mdb", :action => "new_form"})
  get("/movies/:id",                    { :controller => "mdb", :action => "show_movie"})
  get("/movies/:id/edit",              { :controller => "mdb", :action => "edit_form"})
  get("/update_movie/:id",              { :controller => "mdb", :action => "update_row"})
  get("/delete_movie/:id",              { :controller => "mdb", :action => "delete_movie"})


end
