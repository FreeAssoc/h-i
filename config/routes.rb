HotelinsiderApi::Application.routes.draw do
  api_version(:module => "V1", :parameter => {:name => "version", :value => "1"}, :default => true) do
    resources :hotels, except: [:new, :edit]
  end
end
