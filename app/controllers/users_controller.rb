class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def seach
    @users = User.find(params[:login])
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
      log_in @user
      flash[:success] = "Bem Vindo ao Anúario do Délio e Lucas!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Usuario deletado"
    redirect_to users_url
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Perfil editado"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
     params.require(:user).permit(:nomeCompleto, :login, :email, :password, :password_confirmation, :estado, :cidade, :descricao, :foto)
  end
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Por favor faça seu login."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end
  
  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end 

end