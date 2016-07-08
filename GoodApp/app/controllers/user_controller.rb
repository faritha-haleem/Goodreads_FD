class UserController < ApplicationController
  @loginmsg="";
  @signupmsg="";
  def welcome
    
  end

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
