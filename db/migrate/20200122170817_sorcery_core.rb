class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name,            null: false
      t.string :icon_img_url
      t.string :enc_access_token
      t.string :enc_access_token_secret
      t.string :salt
      t.string :secret_salt

      t.timestamps                null: false
    end

    add_index :users, [:enc_access_token, :enc_access_token_secret], unique: true
  end
end
