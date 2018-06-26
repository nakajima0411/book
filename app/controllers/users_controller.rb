class UsersController < ApplicationController

  def about
  end

  def index
  	  @users = User.all
  	  @user = User.find(current_user.id)
  	  @bookn = Book.new
  end

  def show
  	  @user = User.find(params[:id])
  	  @books = @user.books
  	  @bookn = Book.new
  end

  def edit
      @user = User.find(params[:id])
      if @user == current_user
      else
       redirect_to user_path(current_user)
      end
  end

  def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to user_path(@user.id)
  end

  private
  def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
