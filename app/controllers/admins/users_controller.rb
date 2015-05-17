class Admins::UsersController < AdminsController

  def create
    @user = User.new(user_params)
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to '/admins/users'
    else
      render :edit
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/admins/users'
  end

  def user_params
    params.require(:user).permit(:name, :email, :role, :bio)
  end

end

