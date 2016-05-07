Rails.application.routes.draw do

  get('/', { :controller => 'movies', :action => 'index'})

  # create
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form'})
  get('/create_movie', { :controller => 'movies', :action => 'create_row'})
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'directors', :action => 'create_row' })


  # Reading
  get('/movies/:id', { :controller => 'movies', :action => 'show'})
  get('/movies', { :controller => 'movies', :action => 'index'})
  get('/directors', { :controller => 'directors', :action => 'index'})
  get('/directors/:id', { :controller => 'directors', :action => 'show'})



  # Edit
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form'})
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })



  # Delete
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })


end
