class CreateMemberTypes < ActiveRecord::Migration
  def change
    create_table :member_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
