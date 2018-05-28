Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  	get "/query_params_url" => "params_examples#query_params_action"
  	get "/name_url" => "params_examples#name_action"
  	get "/guess_url" => "params_examples#guess_action"
  end
end
