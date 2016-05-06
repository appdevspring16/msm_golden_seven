Rails.application.routes.draw do

get('/', { :controller => 'movies', :action => 'index' })
#movies
get('/movies', { :controller => 'movies', :action => 'index' })
#add new movie
get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
get('/create_movie', { :controller => 'movies', :action => 'create_row' })
#look at movie
get('/movies/:id', { :controller => 'movies', :action => 'show' })
#delete movie
get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })
#edit movie
get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })


#directors



get('/directors', { :controller => 'directors', :action => 'index' })
#add
get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
get('/create_director', { :controller => 'directors', :action => 'create_row' })
#look
get('/directors/:id', { :controller => 'directors', :action => 'show' })
#delete
get('/delete_directors/:id', { :controller => 'directors', :action => 'destroy' })
#edit
get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

#directors



get('/actors', { :controller => 'actors', :action => 'index' })
#add
get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
get('/create_actor', { :controller => 'actors', :action => 'create_row' })
#look
get('/actors/:id', { :controller => 'actors', :action => 'show' })
#delete
get('/delete_actors/:id', { :controller => 'actors', :action => 'destroy' })
#edit
get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })



end
