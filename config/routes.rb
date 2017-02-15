Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :articles do
    resources :comments
  end

  # resources :bancos
  get 'bancos/getAll' => 'bancos#index'
  get 'bancos/get/:id' => 'bancos#show'
  post 'bancos/save' => 'bancos#create'
  delete 'bancos/delete/:id' => 'bancos#destroy'
  match 'bancos' => "bancos#options", via: :options
  
end
