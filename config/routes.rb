Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'contact' => 'welcome#contact'
  get 'portfolio' => 'welcome#portfolio'
  get 'services' => 'welcome#services'
  get 'testimonials' => 'welcome#testimonials'

  resources :products
  
end
