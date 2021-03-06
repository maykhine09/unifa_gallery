class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login_name, default: "", null: false
      t.string :password, default: "", null: false
      t.string :password_hash

      t.timestamps
    end
  end
end
