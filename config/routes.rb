Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'contact' => 'welcome#contact'
  
end
