Rails.application.routes.draw do

  # ----------------------------- DIRECTORS ------------------------------------ #

  get('/directors/new_form/', { :controller => 'directors', :action => 'new_form' })
  #READ
  #Build a way to see a list of all rows in the table, e.g., by visiting http://localhost:3000/directors
  get('/directors', { :controller => 'directors', :action => 'index' })
  #Build a way to see the details of an individual row, e.g., by visiting http://localhost:3000/directors/4
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  #DELETE
  #Build a way to delete an individual row, e.g., by visiting http://localhost:3000/delete_director/4
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })
  #Add links to the index page and show pages to make it easier to visit these URLs.
  #DONE

  #CREATE
  #Build a way to see a blank form to add a new row, e.g., by visiting http://localhost:3000/directors/new_form
  # ^ moved up to first position so the 'show' action wasn't called
  #Build the complementary action to receive inputs from that form and actually save them into a new row.
  get('/create_director', { :controller => 'directors', :action => 'create_row' })

  #UPDATE
  #Build a way to see a pre-populated form to edit an existing row, e.g., by visiting http://localhost:3000/directors/4/edit_form
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  #Build the complementary action to receive inputs from that form and actually update the existing row with them.
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  # ----------------------------- ACTORS ------------------------------------ #
  #CREATE
  get('/actors/new_form/', { :controller => 'actors', :action => 'new_form' })
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })
  #READ
  get('/actors', { :controller => 'actors', :action => 'index' })
  get('/actors/:id', { :controller => 'actors', :action => 'show' })
  #UPDATE
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })
  #DELETE
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

  # ----------------------------- MOVIES ------------------------------------ #
  #CREATE
  get('/movies/new_form/', { :controller => 'movies', :action => 'new_form' })
  get('/create_movie', { :controller => 'movies', :action => 'create_row' })
  #READ
  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })
  #UPDATE
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })
  #DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })


end
