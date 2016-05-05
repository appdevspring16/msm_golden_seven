Rails.application.routes.draw do

get("/",{:controller=>"movie", :action=>"movie_index"})
get("/movie",{:controller=>"movie", :action=>"movie_index"})
get("/movie/delete/:id",{:controller=>"movie", :action=>"movie_delete"})
get("/movie/show/:id",{:controller=>"movie", :action=>"movie_show"})
get("/movie/new_form",{:controller=>"movie", :action=>"movie_new_form"})
get("/movie/new_movie",{:controller=>"movie", :action=>"movie_new_movie"})

end
