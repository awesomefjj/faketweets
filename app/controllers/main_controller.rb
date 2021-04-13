class MainController < ApplicationController

    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            #find_by 不会报错
        end
    end

end