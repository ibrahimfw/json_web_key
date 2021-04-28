Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'public', to: 'public#public'
  get 'private', to: 'public#private'
  get 'private-scoped', to: 'public#private_scoped'
end
