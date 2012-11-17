class CreateReminders < ActiveRecord::Migration
  def change
    create_table(:reminders) do |t|
      t.string :name
      t.time :time
      t.integer :days
      t.references :user
      t.date :start_at
    end
  end
end
