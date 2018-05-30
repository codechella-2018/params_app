Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  	get "/query_params_url" => "params_examples#query_params_action"
  	get "/name_url" => "params_examples#name_action"
  	get "/guess_url" => "params_examples#guess_action"

  	get "/url_segment_params_url/:wildcard" => "params_examples#url_segment_params_action"
  	get "/guess_url_segment_url/:user_guess" => "params_examples#guess_action"

  	post "/guess_url" => "params_examples#guess_action"
  end
end
