class VotesController < ApplicationController
  def create
    Vote.create(user_id: current_user.id, post_id: params[:post_id], contest_id: params[:contest_id])
    redirect_to contest_path(params[:contest_id])
  end

  def destroy
    Vote.find_by(user_id: current_user.id, post_id: params[:post_id], contest_id: params[:contest_id]).destroy
    redirect_to contest_path(params[:contest_id])
  end
end
