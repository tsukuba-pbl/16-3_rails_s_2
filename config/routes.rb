Rails.application.routes.draw do
  resources :tops
  resources :articles
  resources :rooms
  resources :tarots
  resources :ft_items
  resources :ft_layouts do
    collection do
      get "last"
    end
  end
  resources :placed_furniture_items
  resources :furniture_items
  resources :layouts do
    member do
      get "add_furniture_item"
    end
  end
  mount MediaSite::API => '/'
  resources :uzsers do
    resources :microposts
    member do
      get "add_micropost_get"
    end
    collection do
      post "add_micropost_post"
    end
  end
  resources :microposts
  resources :uxsers
  resources :posts
  root :to => 'tops#index'
  get 'uxser/hoge', to: 'uxsers#hoge'
end
