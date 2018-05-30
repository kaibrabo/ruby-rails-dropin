Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, except: [:index]
  end
  
  get 'faq' => 'welcome#faq'
  
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
