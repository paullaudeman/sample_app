class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
        sign_in @user
        flash[:success] = 'Welcome to the Sample App!'
        redirect_to @user
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
end
