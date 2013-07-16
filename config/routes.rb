WeddingApp::Application.routes.draw do
  devise_for :users

  root :to => 'static_pages#home'
  match '/about', to: 'static_pages#about'
  match '/help', to: 'static_pages#help'
  match '/contact', to: 'static_pages#contact'
  match '/feedback', to: 'static_pages#feedback'
  match '/signup', to: 'users#new'
end
