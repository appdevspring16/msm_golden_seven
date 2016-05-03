Rails.application.routes.draw do
#Default home page
get("/", {:controller=>"movies",:action=>"index"})
get("", {:controller=>"movies",:action=>"index"})

  # READ
  # Build a way to see a list of all rows in the table, e.g., by visiting http://localhost:3000/directors
  # Build a way to see the details of an individual row, e.g., by visiting http://localhost:3000/directors/4


  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  get('/actors', { :controller => 'actors', :action => 'index' })
  get('/actors/:id', { :controller => 'actors', :action => 'show' })

  # DELETE
  # Build a way to delete an individual row, e.g., by visiting http://localhost:3000/delete_director/4
  # Add links to the index page and show pages to make it easier to visit these URLs.
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })

  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

  # CREATE
  # Build a way to see a blank form to add a new row, e.g., by visiting http://localhost:3000/directors/new_form
  # Build the complementary action to receive inputs from that form and actually save them into a new row.
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
  get('/create_movie', { :controller => 'movies', :action => 'create_row' })

  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'directors', :action => 'create_row' })

  get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })

  # UPDATE
  # Build a way to see a pre-populated form to edit an existing row, e.g., by visiting http://localhost:3000/directors/4/edit_form
  # Build the complementary action to receive inputs from that form and actually update the existing row with them.
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })



end
