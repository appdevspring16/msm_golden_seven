Rails.application.routes.draw do

  #create

    get("/directors/new_form", {:controller => "directors", :action => "new_director"})
    get("/create_director", {:controller => "directors", :action => "create_row"})




#read

  get("/directors",     {:controller => "directors", :action => "index"})
  get("/directors/:id", {:controller => "directors", :action => "show"})


#update

get("/directors/:id/edit",     {:controller => "directors", :action => "edit_form"})
get("/update_director/:id",     {:controller => "directors", :action => "update_row"})




end
