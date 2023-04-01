class SessionsController < ApplicationController
    def create
        #Get username from JSON request
        user = User.find_by(username: params[:username])
        if user
            session[:uid] = user.id
            render(json: user , session:  session)
        end
        # else
        #     render(json: {error: "Not authorized"} :unauthorized)
        # end
    end

end
