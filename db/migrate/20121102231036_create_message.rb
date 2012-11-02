class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :channel_id, null: false
      t.text :message,       null: false

      t.timestamps
    end
    add_index :messages, :id
    add_index :messages, :channel_id
    add_index :messages, :message
  end
end
