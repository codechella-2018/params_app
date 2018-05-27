class Api::ParamsExamplesController < ApplicationController
	def query_params_action
		@my_message = params["message"]
		@second_message = params["second_message"]
		render "query_params_view.json.jbuilder"
	end
end
