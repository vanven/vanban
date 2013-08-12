Vanban::Application.routes.draw do

  match '/auth/:provider/callback', to: 'sessions#create'
  match '/logout', to: 'sessions#destroy'

  get '/auth/failure' do
    flash[:notice] = params[:message] # if using sinatra-flash or rack-flash
    redirect '/'
  end

  # You can have the root of your site routed with "root"
  root 'site#index'

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"


end
