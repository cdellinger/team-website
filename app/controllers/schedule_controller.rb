class ScheduleController < ApplicationController
	def index
			@teams = Team.all
	end

	def team_schedule
		@wins = 0
		@losses = 0
		@ties = 0
		if params[:id].nil?
		else
		end


		#@current_season = Season.where(is_current: true)[0]
		#@teams = Team.where(:season_id => @current_season.id)
		#@games = Game.where(:team_id => @teams).sort(kickoff: 1)
		@team = Team.find(params[:team_id])
		@games = Game.where(:team_id => params[:team_id]).order(:kickoff)
		#@games = Game.joins(:team).where(teams: {season_id: @current_season.id}).order(:kickoff)
		#todo calculcate wins, losses, ties
	end
end
