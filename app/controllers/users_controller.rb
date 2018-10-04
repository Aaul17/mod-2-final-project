class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @users = User.all.select{|e| e.age == params[:search].to_i || e.username == params[:search] || e.gender == params[:search]}
    else
      @users = User.all
    end
  end

  def show

  end

  def new
    @user = User.new
    @user.interests.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Profile created!"
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_path
    end
  end

  def edit

  end

  def update
    @user.update(user_params)
    if @user.valid?
      flash[:notice] = "Profile updated!"
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = 'Your profile now lies in a pile of feathers.'
    redirect_to home_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :image_id, :username, :age, :gender, :occupation, :bio, :email, :password, :search, interest_ids:[])
  end
end
