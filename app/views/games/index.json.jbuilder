json.array!(@games) do |game|
  json.extract! game, :id, :opponent, :kickoff, :location, :map_url, :directions, :team_url, :halftime_snack, :end_of_game_snack, :is_home_game, :our_score, :opponent_score, :team_id
  json.url game_url(game, format: :json)
end
