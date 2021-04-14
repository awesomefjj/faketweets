class ApplicationController < ActionController::Base
 before_action :set_current_user
 #所有其他action之前， index，create之类
    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
            #find_by 不会报错
        end
    end

    def require_uer_logged_in
        redirect_to sign_in_path, alert: "You must be signed in to do that." if Current.user.nil?
    end
end
