class Api::V1::BadgesController < ApplicationController

  def index
    badges = Badge.find(params[:player_id])

    render json: badges, status:200
  end

  def show
    badges = Badge.find(params[:id])

    render json: badges, status:200
  end

  def update
    player = Player.find(params[:id])
    badges = Badge.find(params[:id])

    player.badges.update(badge_params)

    render json: player, status:200
  end

  private

  def badge_params
    params.require(:badge).permit(:player_id, :performance_buzz, :media_buzz, :capital_appreciation, :prime_time, :twilight_years, :badge)
  end
  
end
