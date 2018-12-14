class ChangeDataPasswordDigestForPasswordConfirmation < ActiveRecord::Migration[5.2]
  def remove
  	remove_column :users, :password_confirmation
  end
  def change
  	add_column :users, :password_digest, :text
  end

end
