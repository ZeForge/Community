class AddOmniauthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :avatar_url, :string
    add_column :users, :fb_id, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_provider, :string
    add_column :users, :oauth_expires_at, :datetime
  end
end
