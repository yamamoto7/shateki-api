Rails.application.routes.draw do
  scope :api, format: 'json' do
    resources :users, only: [:index, :show, :update]
    resources :stores, only: [:index, :show, :create]
    get 'stores/:id/items' => 'items#index_by_store_id'
    post 'items/:id/users' => 'items#create_user_item'
  end
end
