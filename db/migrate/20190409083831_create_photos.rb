class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :user, null: false, index: true
      t.string :title, null: false, default: ''
      t.string :file

      t.timestamps
    end

    add_foreign_key :photos, :user, column: :user_id
  end
end
