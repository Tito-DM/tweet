class ApplicationController < ActionController::Base
  #find_by does not generate an error when user is not found
  before_action :set_current_user

  def set_current_user
   Current.user = User.find_by(id: session[:user_id]) 
  end

 def require_user_logged_in!
  redirect_to sign_in_path, alert: "you must be sign in to do that" if Current.user.nil?
 end
end
