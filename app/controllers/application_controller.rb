class ApplicationController < ActionController::Base
  protect_from_forgery
	include AuthenticationHelper
	before_filter :set_locale
	def set_locale
		I18n.locale = params[:lang] if params[:lang].present?
	end
end
