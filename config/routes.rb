Rails.application.routes.draw do

get("/",{:controller=>"movie", :action=>"movie_index"})
get("/movie",{:controller=>"movie", :action=>"movie_index"})
get("/movie/delete/:id",{:controller=>"movie", :action=>"movie_delete"})
get("/movie/show/:id",{:controller=>"movie", :action=>"movie_show"})
get("/movie/edit/:id",{:controller=>"movie", :action=>"movie_edit_form"})
get("/movie/new_form",{:controller=>"movie", :action=>"movie_new_form"})
get("/movie/new_movie",{:controller=>"movie", :action=>"movie_new_movie"})
get("/movie/edit_movie/:id",{:controller=>"movie", :action=>"movie_edit_movie"})


get("/",{:controller=>"director", :action=>"director_index"})
get("/directors",{:controller=>"director", :action=>"director_index"})
get("/delete_director/:id",{:controller=>"director", :action=>"director_delete"})
get("/directors/new_form",{:controller=>"director", :action=>"director_new_form"})
get("/directors/new_director",{:controller=>"director", :action=>"director_new_director"})
get("/directors/edit_director/:id",{:controller=>"director", :action=>"director_edit_director"})
get("/directors/:id",{:controller=>"director", :action=>"director_show"})
get("/directors/:id/edit_form",{:controller=>"director", :action=>"director_edit_form"})



end
