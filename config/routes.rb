Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'records' => 'data#all_records'
  post 'get_records' => 'data#get_records'

  root 'data#all_records'
end
