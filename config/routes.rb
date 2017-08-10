Rails.application.routes.draw do
  devise_for :users
get "/jquery-1" => "pages#jquery_1"
get "/jquery-2" => "pages#jquery_2"
get "/jquery-3" => "pages#jquery_3"
get "/jquery-4" => "pages#jquery_4"
get "/jquery-5" => "pages#jquery_5"

resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
      post "toggle_flag" => "posts#toggle_flag"
      post "rate" => "posts#rate"
     end
   end
root "posts#index"
end
