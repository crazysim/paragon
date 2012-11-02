class CreateChannelsNicks < ActiveRecord::Migration
  def change
    create_table :channels_nicks do |t|
      t.integer :channel_id, null: false
      t.integer :nick_id,    null: false
    end
    add_index :channels_nicks, :channel_id
    add_index :channels_nicks, :nick_id
  end
end
