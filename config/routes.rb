Rails.application.routes.draw do

  get("/",                       { :controller => "movies",    :action => "index" })

  get("/movies",                 { :controller => "movies",    :action => "index" })
  get("/movies/new_form",        { :controller => "movies",    :action => "new_form" })
  get("/movies/:id",             { :controller => "movies",    :action => "show" })
  get("/movies/:id/edit_form",   { :controller => "movies",    :action => "edit_form" })
  get("/movies/:id/delete",      { :controller => "movies",    :action => "delete" })
  get("/create_movie",           { :controller => "movies",    :action => "create_movie" })
  get("/edit_movie/:id",         { :controller => "movies",    :action => "edit_movie" })
  get("/directors",              { :controller => "directors", :action => "index" })
  get("/actors",                 { :controller => "actors",    :action => "index" })

end
