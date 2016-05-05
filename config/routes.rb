Rails.application.routes.draw do

get('/delete_:type/:id', { :controller => 'all', :action => 'delete' })
get('/delete_:type/:id', { :controller => 'all', :action => 'delete' })
get('/delete_:type/:id', { :controller => 'all', :action => 'delete' })

#expect type to be directors,movies,actors
get('/:type', { :controller => 'all', :action => 'index' })
get('/:type/:id', { :controller => 'all', :action => 'show' })

end
