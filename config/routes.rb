Rails.application.routes.draw do
  get 'pipeline/pipeline'
  get 'pipeline' => 'pipeline#pipeline'
  root 'pipeline#pipeline'

  get 'plant_group_updates/transplant_to_veg' => 'plant_group_updates#transplant_to_veg'
  get 'plant_group_updates/transplant_to_flower' => 'plant_group_updates#transplant_to_flower'
  get 'plant_group_updates/flip' => 'plant_group_updates#flip'
  resources :plant_group_updates

  resources :plant_groups
  resources :rooms


  get 'debug/index'
  get 'debug' => 'debug#index'
  get 'debug/search'
end
