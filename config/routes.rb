Rails.application.routes.draw do
  get 'random_activity', to: 'activity#random_activity'
end
