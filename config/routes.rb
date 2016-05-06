Rails.application.routes.draw do
  #Default route to movies
  get("/", { :controller => "movies", :action => "index"})

  #movies
  get("/movies", { :controller => "movies", :action => "index"})

  #directors
  get("/directors", { :controller => "directors", :action => "index"})

  #actors
  get("/actors", { :controller => "actors", :action => "index"})

end
