class AddMultipleColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_expires_at, :datetime
    add_column :users, :authentication_token, :string
    add_column :users, :name, :string
    add_column :users, :picture_url, :string
  end
end
