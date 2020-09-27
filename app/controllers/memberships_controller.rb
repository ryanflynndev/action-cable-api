class MembershipController < ApplicationController

  def create
    membership = Membership.create(membership_params)
    render json: membership
  end

  private

  def membership_params
    params.permit(:membership).require(:user_id, :chatroom_id)
  end
end
