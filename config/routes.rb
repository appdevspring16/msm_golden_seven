Rails.application.routes.draw do
  get("/", { :controller => "mdb", :action => "movies" })

  # Director routes
  get("/directors",                     { :controller => "mdb", :action => "directors" })
  get("/directors/new_form",            { :controller => "mdb", :action => "new_form_director"})
  get("/directors/:id",                 { :controller => "mdb", :action => "show_director" })
  get("/directors/:id/edit_form",       { :controller => "mdb", :action => "edit_form_director" })


  #Actor routes
  get("/actors",                        { :controller => "mdb", :action => "actors" })
  get("/actors/new_form",               { :controller => "mdb", :action => "new_form_actor"})
  get("/actors/:id",                    { :controller => "mdb", :action => "show_actor" })
  get("/actors/:id/edit_form",          { :controller => "mdb", :action => "edit_form_actor" })

  #Movie routes
  get("/create_movie",                  { :controller => "mdb", :action => "create_movie"})
  get("/movies",                        { :controller => "mdb", :action => "movies"})
  get("/movies/new_form",               { :controller => "mdb", :action => "new_form_movie"})
  get("/movies/:id",                    { :controller => "mdb", :action => "show_movie"})
  get("/movies/:id/edit",              { :controller => "mdb", :action => "edit_form_movie"})
  get("/update_movie/:id",              { :controller => "mdb", :action => "update_row_movie"})



end
