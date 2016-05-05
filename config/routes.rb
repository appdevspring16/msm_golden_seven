Rails.application.routes.draw do

#Routes to main page
get("/",                  { :controller => "movies", :action => "index"})


#Routes to CREATE DIRECTORS
get("/directors/new",     { :controller => "directors", :action => "new_form" })
get("/create_director",   { :controller => "directors", :action => "create_row"})


#Routes to READ DIRECTORS
get("/directors",         { :controller => "directors", :action => "index"})
get("/directors/:id"      { :controller => "directors", :action => "show_details"})



#Routes to UPDATE DIRECTORS




#Routes to DESTROY DIRECTORS





end
