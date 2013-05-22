HotelinsiderApi::Application.routes.draw do

  api_version(:module => "V1", :parameter => {:name => "version", :value => "1"}, :defaults => {:format => "json"}, :default => true) do

    match '/users/golive_notify' => 'users#golive_notify'

    resources :hotels, except: [:new, :edit] do
      resources :rooms, except: [:new, :edit]
    end
    resources :categories, except: [:new, :edit]
    resources :question_types, except: [:new, :edit]
    resources :questions, except: [:new, :edit]
    resources :walkthroughs, except: [:new, :edit]
    resources :sites, except: [:new, :edit]
    resources :countries, except: [:new, :edit]
    resources :regions, except: [:new, :edit]
    resources :users, except: [:new, :edit]
 end

end
