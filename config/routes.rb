Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    resources :bars, except: %i(new edit)
    resources :foos, except: %i(new edit)
  end

  # FOR EXTERNAL/GULP EXAMPLES
  # get "/client-assets/:name.:format", to: redirect("/client/client-assets/%{name}.%{format}")

  get '/ui' => 'ui#index'
  get '/ui#' => 'ui#index'
  root "ui#index"
end
