class UsersController < ApplicationController
  def new
	@user = User.new
  end
  def show
	@user = User.find(params[:id])
  end
    def destroy
    sign_out
    redirect_to root_url
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
	  sign_in @user
      flash[:success] = "Welcome to PollSpark!"
      redirect_to root_path
    else
      render 'new'
    end
  end
end
