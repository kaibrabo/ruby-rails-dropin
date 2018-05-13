Rails.application.routes.draw do
  
  resources :topics
  
  resources :posts

  get 'faq' => 'welcome#faq'
  
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
