class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.belongs_to :team, index: true
      t.belongs_to :member, index: true

      t.timestamps
    end
  end
end
