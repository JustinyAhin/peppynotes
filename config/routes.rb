Rails.application.routes.draw do
  get '/:id' =>  'peppies#show'
  get 'edit/:id' =>  'peppies#show'
  patch '/:id' =>  'peppies#update'
  post  '/' =>  'peppies#create'
  delete  '/:id'   =>  'peppies#destroy'


  root 'peppies#index'
end