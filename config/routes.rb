HotelinsiderApi::Application.routes.draw do

  api_version(:module => "V1", :parameter => {:name => "version", :value => "1"}, :defaults => {:format => "json"}, :default => true) do

    resources :hotels, except: [:new, :edit]
    resources :categories, except: [:new, :edit]
    resources :question_types, except: [:new, :edit]
    resources :questions, except: [:new, :edit]
    resources :walkthroughs, except: [:new, :edit]
    resources :sites, except: [:new, :edit]

  end

end
