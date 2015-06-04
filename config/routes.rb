Rails.application.routes.draw do
  scope :api do
    resources :tw_users
    resources :papers
  end
end
