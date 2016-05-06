Rails.application.routes.draw do

get('/delete_:type/:id', { :controller => 'all', :action => 'delete' })
get('/delete_:type/:id', { :controller => 'all', :action => 'delete' })
get('/delete_:type/:id', { :controller => 'all', :action => 'delete' })

get('/update_:type/:id', { :controller => 'all', :action => 'update' })
get('/update_:type/:id', { :controller => 'all', :action => 'update' })
get('/update_:type/:id', { :controller => 'all', :action => 'update' })

get('/:type/new_form', { :controller => 'all', :action => 'add' })
get('/create_:type', { :controller => 'all', :action => 'insert' })
get('/:type/:id/edit_form', { :controller => 'all', :action => 'edit' })
#expect type to be directors,movies,actors
get('/:type', { :controller => 'all', :action => 'index' })
get('/:type/:id', { :controller => 'all', :action => 'show' })

end
