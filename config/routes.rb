Rails.application.routes.draw do
  devise_for :admins
  resources  :courses
  resources  :cohorts
  resources  :instructors
  resources  :students
  resources  :students_cohorts

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
