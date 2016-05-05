Rails.application.routes.draw do

  #Route for home page:
  get('/', { :controller => 'movies', :action => 'index'})

  #Movie routes:

    #routes to CREATE:
    get('/movies/new_form', { :controller => 'movies', :action => 'new_form'})
    get('/create_movie', { :controller => 'movies', :action => 'create_row'})

    #routes to READ:
      get('/movies', { :controller => 'movies', :action => 'index'})
      get('/movies/:id', { :controller => 'movies', :action => 'show'})

    #routes to EDIT:
    get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form'})
    get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

    #routes to DELETE:
    get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy'})

end
