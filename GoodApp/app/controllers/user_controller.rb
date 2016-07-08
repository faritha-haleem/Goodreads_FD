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
	redirect_to "user#welcome"
  end

  def login
  	#render plain: params[:login].inspect
  end

  def homepage
    @user = User.find(params.require(:login).permit(:username, :password))
    #if @user == nil
    #	redirect_to "user#welcome"
    #	@loginmsg="Username or password is incorrect."
    #else
    	@loginmsg = "Welcome to Freash Reads #{@user.username}"
    #end

  end


end
