Rails.application.routes.draw do
  get 'pipeline/pipeline'
  get 'pipeline' => 'pipeline#pipeline'
  root 'pipeline#pipeline'

  resources :plant_group_updates
  resources :plant_groups
  resources :rooms


  get 'debug/index'
  get 'debug' => 'debug#index'
  get 'debug/search'
end
