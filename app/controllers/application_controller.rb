class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception
      before_action :configure_permitted_parameters, if: :devise_controller?

      before_action :authenticate_user!, :except=>[:top, :new_user_registration, :new_user_session, :about]
        def top
        end
        def new_user_registration
        end
        def new_user_session
        end
        def about
        end

      protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit( :sign_up, keys: [:name,:email])
        devise_parameter_sanitizer.permit( :sign_in, keys: [:name,:email])
        devise_parameter_sanitizer.permit( :account_update, keys: [:name,:email])
      end
end