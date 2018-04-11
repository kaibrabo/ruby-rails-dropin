Rails.application.routes.draw do
  
  get 'welcome/faq'
  
  get 'welcome/index'
  
  get 'welcome/about'

  root 'welcome#index'
end
