class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_admin_user
  around_filter :catch_not_found
 #  def render_404
	#   raise ActiveRecord::RecordNotFound.new('Not Found')
	# end

	# rescue ActiveRecord::RecordNotFound
 #  	redirect_to root_url, :flash => { :error => "Record not found." }

 	private

	def catch_not_found
	  yield
	rescue ActiveRecord::RecordNotFound
	  render file: "#{Rails.root}/public/404.html", layout: false, status: 404
	end

end
