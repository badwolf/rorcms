# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #系统默认
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  #权限插件 #authenticated_system.rb
  include AuthenticatedSystem 
  filter_parameter_logging :password
  rescue_from Authorization::PermissionDenied do |e|
    flash[:error] = '当前用户没有权限访问该页面，请登录'
    store_location
    redirect_to login_path
  end
  #权限插件 #authenticated_system.rb

  #用户seesion
  helper_method :current_user   
  private  
   def current_user_session  
     return @current_user_session if defined?(@current_user_session)  
     @current_user_session = UserSession.find  
   end       
  def current_user  
    @current_user = current_user_session && current_user_session.record  
  end  
  # 用户session

end
