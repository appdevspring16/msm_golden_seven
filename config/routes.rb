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



end
