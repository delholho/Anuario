class AddRememberDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rememver_digest, :string
  end
end
