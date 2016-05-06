Rails.application.routes.draw do

  # homepage
  get('/', { :controller => 'directors', :action => 'director_index' })

  # All DIRECTORS
  # Directors Homepage
  get('/directors', { :controller => 'directors', :action => 'director_index' })

  #create
  get('/directors/new_form',             { :controller => 'directors', :action => 'new_form' })
  get('/directors/create_director', { :controller => 'directors', :action => 'create' })

  # show
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  # delete
  get('/delete_director/:id', { :controller => 'directors', :action => 'delete' })

  # Update
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/directors/update_director/:id', { :controller => 'directors', :action => 'update' })

  # All ACTORS
  # Actors Homepage
  get('/actors', { :controller => 'actors', :action => 'actor_index' })

  #create
  get('/actors/new_form',             { :controller => 'actors', :action => 'new_form' })
  get('/actors/create_actor', { :controller => 'actors', :action => 'create' })

  # show
  get('/actors/:id', { :controller => 'actors', :action => 'show' })

  # delete
  get('/delete_actor/:id', { :controller => 'actors', :action => 'delete' })

  # Update
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/actors/update_actor/:id', { :controller => 'actors', :action => 'update' })

  # All MOVIES
  # Movies Homepage
  get('/movies', { :controller => 'movies', :action => 'movie_index' })

  #create
  get('/movies/new_form',             { :controller => 'movies', :action => 'new_form' })
  get('/movies/create_movie', { :controller => 'movies', :action => 'create' })

  # show
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  # delete
  get('/delete_movie/:id', { :controller => 'movies', :action => 'delete' })

  # Update
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
  get('/movies/update_movie/:id', { :controller => 'movies', :action => 'update' })

end
