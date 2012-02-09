class UsersController < ApplicationController
before_filter :authenticate, :only=>[:index,:show,:destroy]
before_filter :admin_user,   :only => :destroy
  def index
	@title = "All Users"
	@users = User.paginate(:page => params[:page])
  end
	
  def new
	@user = User.new
	@title = "Registration"
  end

  def create 
	@user = User.new(params[:user])
	if @user.save
	sign_in @user
	redirect_to @user
	else
	@title = "Sign up"
	render 'new'
	end
  end
  
  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  	@finances = @user.finances
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end
  
  private
  
  def authenticate
  deny_access unless signed_in?
  
  def admin_user
      redirect_to(root_path) unless current_user.admin?
  end
    
  end
  
end
