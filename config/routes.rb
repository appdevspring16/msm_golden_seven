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

  # # Routes to READ Directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "view" })
end
