class CreateSentEmails < ActiveRecord::Migration
  def change
    create_table :sent_emails do |t|
      t.time :time
      t.boolean :completed
      t.references :reminder

      t.timestamps
    end
  end
end
