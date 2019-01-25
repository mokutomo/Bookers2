class UsersController < ApplicationController
  def top
  end
  def edit
    @user =User.find(params[:id])
    if @user!=current_user
      redirect_to user_path(current_user)
    end
  end
  def update
    @user =User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
end
def index
  @book = Book.new
  @users = User.all
end

def show
  @book = Book.new
  @user = User.find(params[:id])
end


  private

    def user_params
        params.require(:user).permit(:name, :introduction, :image)
    end
end
