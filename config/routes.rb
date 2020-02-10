Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/google_responce', to: 'googles#google_responce'
  get '/flush_records', to: 'googles#flush_records'
  root 'googles#index'
end
