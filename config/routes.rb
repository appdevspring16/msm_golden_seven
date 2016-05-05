Rails.application.routes.draw do

  get("/",                       { :controller => "msm",    :action => "list", :type => "movies" })
  get("/:type",                  { :controller => "msm",    :action => "list"  })
  get("/:type/new_form",         { :controller => "msm",    :action => "new_form" })
  get("/:type/create",           { :controller => "msm",    :action => "create" })
  get("/:type/:id",              { :controller => "msm",    :action => "show",  })
  get("/:type/:id/delete",       { :controller => "msm",    :action => "delete" })
  get("/:type/:id/edit_form",    { :controller => "msm",    :action => "edit_form" })
  get("/:type/:id/edit",         { :controller => "msm",    :action => "edit" })

end
