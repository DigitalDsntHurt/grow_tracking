Rails.application.routes.draw do
  get 'pipeline/pipeline'
  get 'pipeline' => 'pipeline#pipeline'
  root 'pipeline#pipeline'

  resources :plant_group_updates
  resources :plant_groups
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
