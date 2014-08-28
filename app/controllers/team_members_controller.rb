class TeamMembersController < ApplicationController
  def index
    @team = Team.find(params[:team_id])
    @team_members = TeamMember.where(:team_id => params[:team_id])
  end

  def new
    @members = Member.all
    @team_member = TeamMember.new
    @team = Team.find(params[:team_id])
  end

private
  def team_member_params
   params.require(:team_member).permit(:team_member_ids => [], :teams_ids => [])
  end

end
