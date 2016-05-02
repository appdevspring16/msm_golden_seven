Rails.application.routes.draw do

# Route for default domain:

  get("/", { :controller => "movies", :action => "index"})


# Director routes
# READ
  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:id", { :controller => "directors", :action => "show"})


# DELETE

  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

# CREATE

  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'directors', :action => 'create_row' })

# UPDATE

  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

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
