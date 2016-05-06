Rails.application.routes.draw do
# Route for bare domain:
get('/', { :controller => 'movies', :action => 'index' })


# DIRECTORS

# CREATE
get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
get('/create_director', { :controller => 'directors', :action => 'create_row' })

# READ
get('/directors', { :controller => 'directors', :action => 'index' })
get('/directors/:id', { :controller => 'directors', :action => 'show' })

# DELETE
get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

# UPDATE
get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

# ACTORS

# CREATE
get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
get('/create_actor', { :controller => 'actors', :action => 'create_row' })

# READ
get('/actors', { :controller => 'actors', :action => 'index' })
get('/actors/:id', { :controller => 'actors', :action => 'show' })

# DELETE
get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

# UPDATE
get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })


# MOVIES

# CREATE
get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
get('/create_movie', { :controller => 'movies', :action => 'create_row' })

# READ
get('/movies', { :controller => 'movies', :action => 'index' })
get('/movies/:id', { :controller => 'movies', :action => 'show' })

# UPDATE
get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

#DELETE
get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })


end
