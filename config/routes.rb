RightRailsDemo::Application.routes.draw do
  resources :articles, :categories, :pictures
  
  root :controller => 'pages', :action => 'index'
end
