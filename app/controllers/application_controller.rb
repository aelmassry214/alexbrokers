class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
		
	before_action :configure_permitted_parameters, if: :devise_controller?

	config.before_configuration do
		I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
		I18n.default_locale = :ar
		I18n.reload!
	end  

  protected
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
		devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password, :mob])
	end
	
	
end

