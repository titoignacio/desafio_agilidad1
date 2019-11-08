class RandomUserController < ApplicationController
  before_action :authenticate_user!
  def new
    @random_user = User.pick_random(current_user)
    if random_user
    @interaction = where.create(giver: current_user, receiver_id: @random_user.id).first_or_create
  else
    redirect_to congrats_path
   end
  end
end
