module SessionsHelper
  def login user
    p "##########   LOGIN USER   ############"
    session[:user_id]  = user.id
    @current_user = user
  end
    
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logout
    @current_user = nil
    p session[:user_id]
    session[:user_id] = nil
    p "############     LOGOUT SESSION USER ID   ###############",session[:user_id]
  end

  def logged_in? user
    return session[:user_id]  == user.id
  end
end
