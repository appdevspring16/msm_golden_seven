Rails.application.routes.draw do

get("/", {:controller => "movies", :action => "index"})

  # Routes for the Director resource:
# READ
 get('/directors', { :controller => 'directors', :action => 'index' })
  

end
