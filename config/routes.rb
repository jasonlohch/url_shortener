Rails.application.routes.draw do
    get 'urls/index'
      resources :urls
    root 'urls#index'

    get '/urls/:id/short' => 'urls#short'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
