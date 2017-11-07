module ApplicationHelper
	def current_user
		session[:current_user] || "No emails yet"
	end
end
