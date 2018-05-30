class Api::ParamsExamplesController < ApplicationController

	def query_params_action
		@my_message = params["message"]
		@second_message = params["second_message"]
		render "query_params_view.json.jbuilder"
	end

	def name_action
		@my_name = params["name"]
		@message = "Hey your name doesn't start with an A"
		if @my_name.downcase.starts_with?("a")
			@message = "Hey, your name starts with the first letter of the alphabet!"
		end
		render "name_view.json.jbuilder"
	end

	def guess_action
		winning_num = 36
		@user_guess = params["user_guess"].to_i
		#if user guess is higher than winning num, message is "too high"
		if @user_guess > winning_num
			@message = "too high"
		# if user guess is lower than winning num, message is "too low"
		elsif @user_guess < winning_num
			@message = "too low"
		# otherwise, you win
		else
			@message = "you win!"
		end
		render "guess_view.json.jbuilder"
	end

	def url_segment_params_action
		@user_input = params["wildcard"]
		render "url_segment_params_view.json.jbuilder"
	end
end

































