Rails.application.routes.draw do

# Route for default domain:

#get("/", { :controller => "movies", :action => "index"})


# Director routes
# READ
  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:id", { :controller => "directors", :action => "show"})


# DELETE

# CREATE

# UPDATE


# Actor routes
# READ

  get("/actors", { :controller => "actors", :action => "index"})

  get("/actors/:id", { :controller => "actors", :action => "show"})

# DELETE

# CREATE

# UPDATE

# Movie routes
# READ

  get("/movies", { :controller => "movies", :action => "index"})

  get("/movies/:id", { :controller => "movies", :action => "show"})


# DELETE

# CREATE

# UPDATE

end
