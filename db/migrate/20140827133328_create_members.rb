class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :avatar
      t.string :nickname
      t.integer :jersey_number
      t.belongs_to :member_type, index: true

      t.timestamps
    end
  end
end
