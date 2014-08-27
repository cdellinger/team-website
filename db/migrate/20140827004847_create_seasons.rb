class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.boolean :is_current

      t.timestamps
    end
  end
end
