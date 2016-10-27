class CreateUserFollowerRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_tagged_users do |t|
      t.references :user, foreign_key: true
      t.integer :follower_id, foreign_key: { to_table: :users }

      t.timestamps
    end
    add_index :photo_tagged_users , [:user_id, :follower_id], unique: true
  end
end
