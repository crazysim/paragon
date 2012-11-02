class CreateNick < ActiveRecord::Migration
  def change
    create_table :nicks do |t|
      t.string :nick, null: false

      t.timestamps
    end
    add_index :nicks, :id
    add_index :nicks, :nick
  end
end
