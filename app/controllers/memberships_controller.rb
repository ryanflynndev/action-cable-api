class MembershipsController < ApplicationController

  def create
    membership = Membership.create(membership_params)
    render json: membership
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id, :chatroom_id)
  end
end
