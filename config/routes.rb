Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth'

  namespace :api do
    namespace :v1 do

      resources :users
      
      resources :categories

      resources :centers

      resources :certifications

      resources :coaches
      
      resources :wods

      get 'user_centers', to: 'centers#user_center'
      get 'user_coaches', to: 'coaches#user_coach'
      get 'all_centers', to: 'centers#all_center'
      get 'all_wods', to: 'wods#all_wod'
      get 'all_categories', to: 'categories#all_category'
    end
  end
end
