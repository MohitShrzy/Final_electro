class AdminController < ApplicationController
    def yourpage
    end
    def login
        if request.post?
        if params["user_id"] == "Admin" && params["password"] == "admin"
            session[:admin]="admin"
            redirect_to stores_url
        else
            flash[:notice]="Invalid Username or Passowrd"
            
            render :action=> "login"
        end
    end      
end
def logout
    session[:admin]=nil
    flash[:notice]="Logout Successful"
    redirect_to :action=>:login
end
end
