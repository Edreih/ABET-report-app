Rails.application.routes.draw do
  root 'courses#index'
  resources :course_criterions
  resources :faculties do
    collection { post :import}
  end
  resources :courses do
    collection { post :import}
  end
  resources :courses
  resources :administrators
  resources :faculty_courses
  resources :criterions
  get 'faculties/index'
  get 'faculties/import'
  get 'courses/index'
  get 'courses/import'
  get '/reports', to: 'reports#index', as: 'reports'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
