class UserController < ApplicationController
  include JsonResponse

  def create
    @user = User.new(params.require(:signup).permit(:fname, :lname, :username, :email, :password))
    @user.save
    @signupmsg = "You have Signedup Successfully with username : #{@user.username}"
    #else
    #	@signupmsg = "Username already taken";
    #end
    #render plain: @user
    redirect_to "/"
  end

  def login
    user_params = params["login"];
    user = User.where(username: user_params["username"], password: user_params["password"])
    if user.present?
      redirect_to "/books/index"
      #current_user user
    else
      redirect_to "/", flash: { error: "User not found!!" }
      #render_output :user_not_found
      # redirect_to "/user/login"
      # render js: "alert('Hello Rails');"
    end
  end

end
