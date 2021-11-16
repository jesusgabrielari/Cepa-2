class ApplicationController < ActionController::Base

before_action :authenticate_user!
before_action :only_admin

def only_admin
    if user_signed_in?
    end
end

#def only_admin
#    redirect_to root_path, alert: "No eres admin" and return if !current_user.admin
#end

#def only_admin
#    if user_signed_in?
#        if !current_user.admin?
#            flash.alert "No eres admin" 
#            redirect_to root_path
#        end
#    end
#end

#def only_admin
#    if session[:user_id].present?
#        if current_user.admin?
#            flash.alert "No eres admin" 
#            redirect_to root_path
#        end
#    end
#end

end
