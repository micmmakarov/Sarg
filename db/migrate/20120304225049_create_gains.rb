class CreateGains < ActiveRecord::Migration
  def change
    create_table :gains do |t|
      t.boolean :status
      t.text :note
      t.references :task
      t.references :user

      t.timestamps
    end
    add_index :gains, [:task_id, :user_id], unique: true

  end
end
