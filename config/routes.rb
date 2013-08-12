Vanban::Application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'site#index'

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

end
