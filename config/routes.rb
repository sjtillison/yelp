Rails.application.routes.draw do
  # Routes for the Reply resource:
  # CREATE
  get "/replies/new", :controller => "replies", :action => "new"
  post "/create_reply", :controller => "replies", :action => "create"

  # READ
  get "/replies", :controller => "replies", :action => "index"
  get "/replies/:id", :controller => "replies", :action => "show"

  # UPDATE
  get "/replies/:id/edit", :controller => "replies", :action => "edit"
  post "/update_reply/:id", :controller => "replies", :action => "update"

  # DELETE
  get "/delete_reply/:id", :controller => "replies", :action => "destroy"
  #------------------------------

  # Routes for the Ownership resource:
  # CREATE
  get "/ownerships/new", :controller => "ownerships", :action => "new"
  post "/create_ownership", :controller => "ownerships", :action => "create"

  # READ
  get "/ownerships", :controller => "ownerships", :action => "index"
  get "/ownerships/:id", :controller => "ownerships", :action => "show"

  # UPDATE
  get "/ownerships/:id/edit", :controller => "ownerships", :action => "edit"
  post "/update_ownership/:id", :controller => "ownerships", :action => "update"

  # DELETE
  get "/delete_ownership/:id", :controller => "ownerships", :action => "destroy"
  #------------------------------

  # Routes for the Neighborhood resource:
  # CREATE
  get "/neighborhoods/new", :controller => "neighborhoods", :action => "new"
  post "/create_neighborhood", :controller => "neighborhoods", :action => "create"

  # READ
  get "/neighborhoods", :controller => "neighborhoods", :action => "index"
  get "/neighborhoods/:id", :controller => "neighborhoods", :action => "show"

  # UPDATE
  get "/neighborhoods/:id/edit", :controller => "neighborhoods", :action => "edit"
  post "/update_neighborhood/:id", :controller => "neighborhoods", :action => "update"

  # DELETE
  get "/delete_neighborhood/:id", :controller => "neighborhoods", :action => "destroy"
  #------------------------------

  # Routes for the Descriptor resource:
  # CREATE
  get "/descriptors/new", :controller => "descriptors", :action => "new"
  post "/create_descriptor", :controller => "descriptors", :action => "create"

  # READ
  get "/descriptors", :controller => "descriptors", :action => "index"
  get "/descriptors/:id", :controller => "descriptors", :action => "show"

  # UPDATE
  get "/descriptors/:id/edit", :controller => "descriptors", :action => "edit"
  post "/update_descriptor/:id", :controller => "descriptors", :action => "update"

  # DELETE
  get "/delete_descriptor/:id", :controller => "descriptors", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Picture resource:
  # CREATE
  get "/pictures/new", :controller => "pictures", :action => "new"
  post "/create_picture", :controller => "pictures", :action => "create"

  # READ
  get "/pictures", :controller => "pictures", :action => "index"
  get "/pictures/:id", :controller => "pictures", :action => "show"

  # UPDATE
  get "/pictures/:id/edit", :controller => "pictures", :action => "edit"
  post "/update_picture/:id", :controller => "pictures", :action => "update"

  # DELETE
  get "/delete_picture/:id", :controller => "pictures", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
