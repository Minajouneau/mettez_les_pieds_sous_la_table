class UsersController < ApplicationController
skip_after_action :verify_authorized

  def edit
    @user = current_user
  end

  def update
    raise
  end

end
