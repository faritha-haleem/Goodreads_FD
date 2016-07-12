class UserController < ApplicationController
  @loginmsg="";
  @signupmsg="";

  def create
    @user = User.new(params.require(:signup).permit(:fname, :lname, :username, :email, :password))
    @user.save
    @signupmsg = "You have Signedup Successfully with username : #{@user.username}"
    redirect_to "homepage#show"
  end

  def login
    @user = User.find(params[:username])
    @userpass = User.find(params[:password])

    if (@user.username == @userpass.username)
      redirect_to "homepage#show"
    else
    end

  end

end
