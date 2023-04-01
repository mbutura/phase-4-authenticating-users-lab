class SessionsController < ApplicationController
    def create
        #Get username from JSON request
        user = User.find_by(username: params[:username])
        if user
            session[:user_id] = user.id
            pp session
            render(json: user , session:  session)
        end
    end
    def destroy
        session.delete(:user_id)
        head :no_content
    end

end
