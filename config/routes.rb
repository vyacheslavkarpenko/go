Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/google_responce', to: 'googles#google_responce'
  root 'googles#index'
end
