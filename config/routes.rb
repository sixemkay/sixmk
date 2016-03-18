Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'contact' => 'welcome#contact'
  get 'testimonials' => 'welcome#testimonials'

  resources :quizes do
    collection do
      get 'furniture'
    end
  end
  
end
