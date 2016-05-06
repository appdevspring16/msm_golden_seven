Rails.application.routes.draw do

# CREATE

get("/directors_create",  { :controller => "golden", :action => "directors_create" })
get("/actors_create",  { :controller => "golden", :action => "actors_create" })
get("/movies_create",  { :controller => "golden", :action => "movies_create" })

get("/directors_new",  { :controller => "golden", :action => "directors_new" })
get("/actors_new",  { :controller => "golden", :action => "actors_new" })
get("/movies_new",  { :controller => "golden", :action => "movies_new" })


# DELETE

get("/directors/delete/:id",  { :controller => "golden", :action => "directors_delete" })
get("/actors/delete/:id",  { :controller => "golden", :action => "actors_delete" })
get("/movies/delete/:id",  { :controller => "golden", :action => "movies_delete" })

# READ

get("/directors",  { :controller => "golden", :action => "directors" })
get("/directors/:id",  { :controller => "golden", :action => "directors_show" })
get("/actors",  { :controller => "golden", :action => "actors" })
get("/actors/:id",  { :controller => "golden", :action => "actors_show" })
get("/movies",  { :controller => "golden", :action => "movies" })
get("/movies/delete/:id",  { :controller => "golden", :action => "movies_delete" })
get("/movies/:id",  { :controller => "golden", :action => "movies_show" })



end
