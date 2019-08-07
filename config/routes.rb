Rails.application.routes.draw do
  get 'error/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index', as: :recipes_path
  get '/recipe/:id' => 'recipes#show'
  get '/error_500' => 'errors#error_500',as: :error_500
end
