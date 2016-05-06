Rails.application.routes.draw do
  # index
  get('/', { :controller => 'movies', :action => 'index' })

  # Routes Movies
  # CREATE
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
  get('/create_movie', { :controller => 'movies', :action => 'create_row' })

  # READ
  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  # UPDATE
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

  # DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })


end
