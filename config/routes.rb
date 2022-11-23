Rails.application.routes.draw do
  # actions: index, show, new, create, edit, update, destroy
  resources :restaurants do
    # actions for review: new
    resources :reviews, only: [:new]
  end

end
