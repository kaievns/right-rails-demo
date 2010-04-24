ActionController::Routing::Routes.draw do |map|
  map.resources :articles, :categories, :pictures
  
  map.root :controller => 'pages', :action => 'index'
end
