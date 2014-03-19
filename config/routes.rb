Wedding::Application.routes.draw do
  root 'admin/marriages#index'
  # root 'mobile/pages#index'
  namespace :mobile do
    resources :marriages do
      get :menu, :on => :member
      get :gallery, :on => :member
      get :schedules, :on => :member
    end
  end

  devise_for :admins, :path => "admins", :path_names => { :sign_in => 'login', :sign_out => 'logout'}, :controllers => { :sessions => "admins/sessions" }
  namespace :admin do
    root 'admin/marriages#index'
    resources :marriages do
      resources :photos do
        post :cover, :on => :member
      end

      resources :schedules
    end
  end
end
