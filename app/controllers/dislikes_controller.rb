class DislikesController < ApplicationController
  def updated
    Interaction.update(params[:id], like: false)
    redirect_to random_user_path

  end
end
