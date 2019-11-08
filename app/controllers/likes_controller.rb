class LikesController < ApplicationController
  def updated
    interaction = Interaction.update(params[:id], like: true)
    match = Interaction.where(receiver_id: current_user.id, giver_id:
    interaction.receiver.id, like: true)
    if match.lenght.positive?
      redirect_to private_messages_path(interaction.receiver.id), notice: 'yujuu tienes un matchs'
    else
    redirect_to random_user_path

  end
end
