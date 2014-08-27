class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :opponent
      t.datetime :kickoff
      t.string :location
      t.string :map_url
      t.text :directions
      t.string :team_url
      t.string :halftime_snack
      t.string :end_of_game_snack
      t.boolean :is_home_game
      t.integer :our_score
      t.integer :opponent_score
      t.belongs_to :team, index: true

      t.timestamps
    end
  end
end
