Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'contact' => 'welcome#contact'
  get 'testimonials' => 'welcome#testimonials'
  
end
