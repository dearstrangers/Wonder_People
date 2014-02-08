class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :messager_email
      t.string :topic
      t.integer :message_id
      t.text :content
      t.boolean :replied
      t.integer :admin_id

      t.timestamps
    end
    add_index :messages, :message_id
    add_index :messages, :admin_id
  end
end
