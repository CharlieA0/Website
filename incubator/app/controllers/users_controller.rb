class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.order("updated_at DESC")
  end

  def show
    @users = User.order("updated_at DESC")
  end
  def create
    if params[:password] == params[:password_confirmation]
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = "You signed up successfully"
        flash[:color]= "valid"
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
      end
      render "new"
    end
  end
  private
        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
            params.require(:user).permit(:username, :password, :email)
        end
end
