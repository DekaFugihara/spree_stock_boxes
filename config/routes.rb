Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :stock_boxes do
      post 'stocking_check', :on => :collection
    end
    match 'stocking' => 'stock_boxes#stocking', :as => :stocking
  end
end
