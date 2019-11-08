class PrivateMessagesController < ApplicationController
  def new
    @pm = PrivateMessage.create(sender: current_user, receiver_id: params[:id])
  end

  def update
  end
end
