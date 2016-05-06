Rails.application.routes.draw do


#movies
get('/', {:controller=> 'movies', :action=>'index'})
#Create movies
get('/movies/new_form', {:controller=>'movies', :action=>'new_form'})
get('/create_movie', {:controller=>'movies', :action=>'create_row'})
# get('/movies/new_form', {:controller=>'movies', :action=>'new_form'})
#Read movies
get('/movies', {:controller=>'movies', :action=>'index'})
get('/movies/:id', {:controller=>'movies', :action=>'show'})
#Update movies
get('/movies/:id/edit_form',{:controller=>'movies', :action=>'edit_form'})
get('/update_movie/:id',{:controller=>'movies', :action=>'update_row'})
#Destroy movies
get('/delete_movie/:id',{:controller=>'movies', :action=>'destroy'})


##################################

#directors

#Create directors
get('/directors/new_form', {:controller=>'directors', :action=>'new_form'})
get('/create_director', {:controller=>'directors', :action=>'create_row'})

#Read directors
get('/directors', {:controller=>'directors', :action=>'index'})
get('/directors/:id', {:controller=>'directors', :action=>'show'})

#Update directors
get('/directors/:id/edit_form',{:controller=>'directors', :action=>'edit_form'})
get('/update_director/:id',{:controller=>'directors', :action=>'update_row'})

#Destroy directors
get('/delete_director/:id',{:controller=>'directors', :action=>'destroy'})



##################################

#actors

#Create actors
get('/actors/new_form', {:controller=>'actors', :action=>'new_form'})
get('/create_actor', {:controller=>'actors', :action=>'create_row'})

#Read actors
get('/actors', {:controller=>'actors', :action=>'index'})
get('/actors/:id', {:controller=>'actors', :action=>'show'})

#Update actors
get('/actors/:id/edit_form',{:controller=>'actors', :action=>'edit_form'})
get('/update_actor/:id',{:controller=>'actors', :action=>'update_row'})

#Destroy actors
get('/delete_actor/:id',{:controller=>'actors', :action=>'destroy'})

end
