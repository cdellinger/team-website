class AddLeaguePageToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :league_page, :string
  end
end
