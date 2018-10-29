class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_params)
    redirect_to admin_root_path
  end

  def delete
  end

  private
  def update_params
    params.require(:user).permit(:image, :name)
  end

end
