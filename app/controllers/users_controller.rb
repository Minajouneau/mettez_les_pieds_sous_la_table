class UsersController < ApplicationController
skip_after_action :verify_authorized

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to root_path
  end

end
