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


#Read directors


#Update directors


#Destroy directors




##################################

#actors

#Create actors


#Read actors


#Update actors


#Destroy actors

end
