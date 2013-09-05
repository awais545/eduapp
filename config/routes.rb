Eduapp::Application.routes.draw do

  get "pages/bids"

  get "pages/referrals"

  get "pages/inbox"

  authenticated :user do
    root :to => 'home#index'
  end
  devise_for :users, :controllers => { :registrations => "registrations"}  
  devise_scope :user do
    get "/confirm" => "registrations#confirm"
  end
  
  root :to => "home#index"
  resources :users
  resources :educations
  resources :experiences
  resources :public_profiles
  resources :profiles do
    collection do
      get :about
      get :commitment
      get :experience
      get :education
    end
  end

end

