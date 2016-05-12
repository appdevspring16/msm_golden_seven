Rails.application.routes.draw do
  get("/directors", {:controller => "directors", :action => "index"})

  get("/directors/new", {:controller => "directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "create_row" })

end
