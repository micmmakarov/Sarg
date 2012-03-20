class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.text :note
      t.time :time

      t.timestamps
    end
  end
end
