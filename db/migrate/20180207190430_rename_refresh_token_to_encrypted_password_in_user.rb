class RenameRefreshTokenToEncryptedPasswordInUser < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :refresh_token, :encrypted_password
  end
end
