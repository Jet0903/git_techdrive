Rails.application.routes.draw do
  devise_for :users
    root  'technologies#index'
    get   'technologies'     => 'technologies#index'  #技術一覧画面
    get   'technologies/new' => 'technologies#new'  #新規登録画面
    post  'technologies'     => 'technologies#create' #技術新規登録
    delete 'technologies/:id' => 'technologies#destroy'
    patch 'technologies/:id' => 'technologies#update'
    get   'users/:id'        => 'users#show'  #Mypageへのルーティング
    get   'technologies/:id/edit' => 'technologies#edit'
end
