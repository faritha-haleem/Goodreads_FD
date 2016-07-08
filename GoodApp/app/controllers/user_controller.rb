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

  def login

    @usern = User.find(params[:username])
    @userpass = User.find(params[:password])

    if (@usern.username == @userpass.username)
      flash[:alert] = "Post successfully created"
    	redirect_to "/show"

    else
      redirect_to "/show"
    end

  end


end
