class UsersController < ApplicationController
  def show
    @user = current_user
    @events = Event.where(user_id: @user.id)
    @event = Event.new
  end
end
