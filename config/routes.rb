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

    #Director routes:

      #routes to CREATE:
      get('/directors/new_form', { :controller => 'directors', :action => 'new_form'})
      get('/create_director', { :controller => 'directors', :action => 'create_row'})

      #routes to READ:
        get('/directors', { :controller => 'directors', :action => 'index'})
        get('/directors/:id', { :controller => 'directors', :action => 'show'})

      #routes to EDIT:
      get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form'})
      get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

      #routes to DELETE:
      get('/delete_director/:id', { :controller => 'directors', :action => 'destroy'})

      #Actor routes:

        #routes to CREATE:
        get('/actors/new_form', { :controller => 'actors', :action => 'new_form'})
        get('/create_actor', { :controller => 'actors', :action => 'create_row'})

        #routes to READ:
          get('/actors', { :controller => 'actors', :action => 'index'})
          get('/actors/:id', { :controller => 'actors', :action => 'show'})

        #routes to EDIT:
        get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form'})
        get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

        #routes to DELETE:
        get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy'})

end
