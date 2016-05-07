Rails.application.routes.draw do

# default view
get('/', { :controller=>'movies', :action=>'index'})

#Create
get('/directors/new_form',{ :controller=> 'directors', :action=>'new_form'})
get('/create_director',{:controller=>'directors', :action=>'create_row'})


# Read a list of all rows in table
get('/directors', { :controller=>'directors', :action=>'index'})
get('/directors/:id',{ :controller=>'directors', :action=>'show'})


#Update
get('/directors/:id/edit_form', {:controller=>'directors', :action=>'edit_form'})
get('/update_director/:id', {:controller=>'directors',:action=>'update_row'})
#Delete

get('/delete_director/:id', {:controller=>'directors', :action=> 'destroy'})


end
