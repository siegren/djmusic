Rails.application.routes.draw do
  resources :melodies
  resources :lyrics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'app_pages#index'
  match 'lyricist', to: 'app_pages#lyricist', as: 'lyricist', via: [:get, :post]
  match 'melodist', to: 'app_pages#melodist', as: 'melodist', via: [:get, :post]
  match 'vocalist', to: 'app_pages#vocalist', as: 'vocalist', via: [:get, :post]
  match 'publish', to: 'app_pages#publish', as: 'publish', via: [:get, :post]
  match 'dashboard/lyricist', to: 'app_pages#lyricist_dashboard', as: 'lyricist_dashboard', via: 'get'
  match 'dashboard/melodist', to: 'app_pages#melodist_dashboard', as: 'melodist_dashboard', via: 'get'
   match 'dashboard/vocalist', to: 'app_pages#vocalist_dashboard', as: 'vocalist_dashboard', via: 'get'
  match 'dashboard/lyricist/audio', to: 'app_pages#audio', as: 'audio', via: 'get'
  match 'dashboard/melodist/audio', to: 'app_pages#myaudio', as: 'melodist_audio_dashboard', via: [:get, :post]
   match 'profile', to: 'app_pages#profile', as: 'profile', via: 'get'

end
