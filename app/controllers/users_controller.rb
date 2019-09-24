class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @locals = Local.where(user_id: current_user.id)
  end
end
