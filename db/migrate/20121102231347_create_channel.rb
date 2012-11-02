class CreateChannel < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :channels, :id
    add_index :channels, :name
  end
end
