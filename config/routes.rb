Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'contact' => 'welcome#contact'
  get 'portfolio' => 'welcome#portfolio'
  get 'testimonials' => 'welcome#testimonials'

  resources :quizes do
    collection do
      get 'furniture'
    end
  end
  
end
