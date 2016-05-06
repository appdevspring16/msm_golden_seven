Rails.application.routes.draw do
  # index
  get("/", { :controller => 'movies', :action => 'index' })

end
