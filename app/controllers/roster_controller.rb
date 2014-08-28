class RosterController < ApplicationController
  def index
    @teams = Team.all
  end

  def team_roster
    @team = Team.find(params[:team_id])
    @team_members = TeamMember.where(:team_id => params[:team_id])    
  end

end
