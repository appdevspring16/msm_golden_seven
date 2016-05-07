Rails.application.routes.draw do

#Routes to main page
get("/",                  { :controller => "directors", :action => "index"})

#Routes to CREATE DIRECTORS
get("/directors/new_form",     { :controller => "directors", :action => "new_form" })
get("/create_director",   { :controller => "directors", :action => "create_row"})

#Routes to READ DIRECTORS
get("/directors",         { :controller => "directors", :action => "index"})
get("/directors/:id",      { :controller => "directors", :action => "show_details"})

#Routes to UPDATE DIRECTORS
get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

#Routes to DESTROY DIRECTORS
get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })




end
