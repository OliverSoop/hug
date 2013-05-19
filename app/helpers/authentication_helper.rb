module AuthenticationHelper
  def signed_in?
    !session[:user_id].nil? && User.find(session[:user_id]).allowed?
  end
end
