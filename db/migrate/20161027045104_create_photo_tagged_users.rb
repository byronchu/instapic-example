class CreatePhotoTaggedUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_tagged_users do |t|
      t.references :photo
      t.references :user

      t.timestamps
    end
  end
end
