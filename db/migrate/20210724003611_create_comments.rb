class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :item_id
      t.integer :user_id
    end
  end
end
