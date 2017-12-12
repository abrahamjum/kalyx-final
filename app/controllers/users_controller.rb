class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_session_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to new_user_session_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

    # The only submittable data through form
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :password, :email)
    end
end
