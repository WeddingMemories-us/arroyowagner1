class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, :except => [:index, :show]

  before_action :configure_permitted_parameters, if: :devise_controller?


  def default_url
  	if Rails.env.production?
  		{:host => "weddingmemories.us"}
  	else
  		{}
  	end
  end

  protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) { |params|
	    params.permit(
	      :email, :password, :password_confirmation, :name,
	      :rsvp, :attendees
	    )
	  }
	  devise_parameter_sanitizer.permit(:account_update) { |params|
	    params.permit(
	      :email, :password, :password_confirmation, :name,
	      :rsvp, :attendees
	    )
	  }
	end

end
