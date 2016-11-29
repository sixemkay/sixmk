Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'election-stickers' => 'stickers#election_stickers'
  get 'electoral-math-purchased' => 'stickers#electoral_math_purchased'
  get 'majority-math-purchased' => 'stickers#majority_math_purchased'

  get 'contact' => 'welcome#contact'
  get 'portfolio' => 'welcome#portfolio'
  get 'services' => 'welcome#services'
  get 'testimonials' => 'welcome#testimonials'

  resources :products do
    member do
      get 'thankyou'
    end
  end
  
end
