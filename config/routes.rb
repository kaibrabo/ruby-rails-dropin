Rails.application.routes.draw do

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
    
  devise_for :users, :controllers => {
    :registrations => 'registrations'
  }
  
  resources :topics do
    resources :posts, except: [:index]
  end
  
  get 'faq' => 'welcome#faq'
  
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
