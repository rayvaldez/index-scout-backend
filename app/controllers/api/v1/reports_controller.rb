class Api::V1::ReportsController < ApplicationController

  def index
    player = Player.find(params[:player_id])
    reports = player.reports

    render json: reports, status:200
  end

  def create
    player = Player.find(params[:player_id])
    report = player.reports.create(report_params)

    render json: report, status:200
  end

  def show
    report = Report.find(params[:id])

    render json: report, status:200
  end

  private

  def report_params
    params.require(:report).permit(:player_id, :content, :name)
  end
  
end
