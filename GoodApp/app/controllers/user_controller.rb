class UserController < ApplicationController
  #@loginmsg="";
  #@signupmsg="";

  def create
  	#@user = User.find(params.require(:signup).permit(:username))
  	#if @user==nil
	  	@user = User.new(params.require(:signup).permit(:fname, :lname, :username, :email, :password))
	  	@user.save
	  	#@signupmsg = "You have Signedup Successfully with username : #{@user.username}"
	#else
	#	@signupmsg = "Username already taken";
	#end
	#render plain: @user
	redirect_to "/show"
  end

  def show


  end
  def login

  end

end
