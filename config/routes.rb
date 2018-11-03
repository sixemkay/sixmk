Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'contact' => 'welcome#contact'
  get 'invitations' => 'invitations#index'
  get 'portfolio' => 'welcome#portfolio'
  get 'services' => 'welcome#services'
  get 'design-for-events' => 'welcome#special_events'
  get 'testimonials' => 'welcome#testimonials'

  resources :products do
    member do
      get 'thankyou'
    end
  end
  
end
