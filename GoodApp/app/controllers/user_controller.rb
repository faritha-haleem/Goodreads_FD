class UserController < ApplicationController
  include JsonResponse

  def create
    #@user = User.find(params.require(:signup).permit(:username))
    #if @user==nil
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
    user_present = User.pluck(:username, :password).include?([params["login"]["username"], params["login"]["password"]])
    if user_present
      redirect_to "/books/index"
    else
      render_output :user_not_found
    end
  end

end
