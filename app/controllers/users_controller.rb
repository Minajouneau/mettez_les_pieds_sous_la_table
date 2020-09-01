class UsersController < ApplicationController
skip_after_action :verify_authorized

  def edit  # recupère url (méthode get)
    @user = current_user
  end


  def update # applique modification (méthode patch)
    @user = User.find(params[:id])
    @user.update(user_params)
    # Redirect to restaurants index
    redirect_to restaurant_path
    # redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:nom, :prenom, :vision, :parcours, :recette)
  end
end
