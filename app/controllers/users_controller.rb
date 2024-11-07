class UsersController < ApplicationController
    def new
      @user = User.new
    end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def update
    @user = User.find(user_params)
    if @user.update(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def delete
    @user = User.find(user_params)
    @user.destroy
    redirect_to users_path
  end


    def show
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
